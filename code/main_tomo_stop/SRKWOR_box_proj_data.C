#include "aux_func.h"
#include "csr.h"
#include <iostream>
#include <math.h>
#include <omp.h>
#include <random>
#include <algorithm>
#include <fstream>
#include <sstream>
using namespace std;

/*

./bin/SRKWOR_box_proj_data.exe ct_gaussian 3 117372 262144 100 2
./bin/SRKWOR_box_proj_data.exe ct_gaussian 3 234664 262144 100 2
./bin/SRKWOR_box_proj_data.exe ct_gaussian 3 469368 262144 100 2
./bin/SRKWOR_box_proj_data.exe ct_gaussian 3 938720 262144 100 2

*/

int main (int argc, char *argv[]) {

	if(argc != 6 && argc != 7) {
		cout << "Incorrect number of arguments: Corret usage is ";
		cout << "'./bin/SRKWOR_box_proj_data.exe <data_set> <n_runs> <M> <N> <max_it_stop>'" << endl;
		exit(1);
	}

	double* b;
	double* x;
	double* x_sol;
	int NNZ;
	int* row_idx;
	int* cols;
	double* values;

	int n_runs = atoi(argv[2]);

	int M = atoi(argv[3]);
	int N = atoi(argv[4]);
	long long max_it_stop = atoll(argv[5]);

	string matrix_type = argv[1];
	string filename_row_idx;
	string filename_cols;
	string filename_values;
	string filename_b;
	string filename_x;
	if (argc == 6 && matrix_type.compare("ct") == 0) {
		filename_row_idx = "../data/ct/row_idx_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_cols = "../data/ct/cols_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_values = "../data/ct/values_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_b = "../data/ct/b_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_x = "../data/ct/x_" + to_string(M) + "_" + to_string(N) + ".bin";
	}
	else if (argc == 7 && matrix_type.compare("ct_gaussian") == 0) {
		int seed = atoi(argv[6]);
		filename_row_idx = "../data/ct_gaussian/row_idx_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_cols = "../data/ct_gaussian/cols_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_values = "../data/ct_gaussian/values_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_b = "../data/ct_gaussian/b_error_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_x = "../data/ct_gaussian/x_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
	}
	else if (argc == 7 && matrix_type.compare("ct_poisson") == 0) {
		int seed = atoi(argv[6]);
		filename_row_idx = "../data/ct_poisson/row_idx_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_cols = "../data/ct_poisson/cols_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_values = "../data/ct_poisson/values_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_b = "../data/ct_poisson/b_error_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_x = "../data/ct_poisson/x_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
	}
	else {
		cout << "Incorrect number of arguments: Corret usage is ";
		cout << "'./bin/SRKWOR_box_proj_data.exe <data_set> <n_runs> <M> <N> <max_it_stop>'" << endl;
		exit(1);
	}

	double start_total = omp_get_wtime();

	importSparseMatrixBIN(M, N, NNZ, filename_row_idx, filename_cols, filename_values, row_idx, cols, values);
	importbVectorBIN(M, filename_b, b);
	importxVectorBIN(N, filename_x, x);
	
	vector<double> sqrNorm_line(M);
	double sqr_matrixNorm = 0;
	for (int i = 0; i < M; i++) {
		sqrNorm_line[i] = sqrNormRow(i, row_idx, cols, values);
		if (sqrNorm_line[i] == 0) {
			cout << "Invalid input: matrix with zero norm line" << endl;
			delete[] row_idx;
			delete[] cols;
			delete[] values;
			delete[] b;
			delete[] x;
			exit(1);
		}
		sqr_matrixNorm += sqrNorm_line[i];
	}

	vector<int> samp_line(M);
	for (int i = 0; i < M; i++)
		samp_line[i] = i;
	mt19937 rng(1);

	double* x_k = new double[N];
	double* x_down = new double[N];
	double* x_up = new double[N];
	x_sol = new double[N];
	for (int i = 0; i < N; i++) {
		x_sol[i] = 0;
	}
	double scale;
	int line;
	long long it;

	double start; 
	double stop;
	double duration = 0;

	int storage_counter;
	vector<double> error_vals(max_it_stop, 0);
	vector<double> gauge_vals(max_it_stop, 0);
	vector<int> error_it(max_it_stop);
	vector<int> gauge_it(max_it_stop);

	for(int run = 0; run < n_runs; run++) {
		for (int i = 0; i < N; i++) {
			x_k[i] = 0;
		}
		it = 0;
		shuffle(begin(samp_line), end(samp_line), rng);
		storage_counter = 0;
		start = omp_get_wtime();
		while(it < max_it_stop) {
			it++;
			for (int i = 0; i < M; i++) {
				line = samp_line[i];
				scale = (b[line]-dotProductCSR(line, row_idx, cols, values, x_down))/sqrNorm_line[line];
				scaleVecLineBoxProj(line, row_idx, cols, values, scale, x_down);
				line = samp_line[M-1-i];
				scale = (b[line]-dotProductCSR(line, row_idx, cols, values, x_up))/sqrNorm_line[line];
				scaleVecLineBoxProj(line, row_idx, cols, values, scale, x_up);			
			}
			for (int i = 0; i < N; i++)
				x_k[i] = 0.5*(x_down[i]+x_up[i]);
			error_it[storage_counter] = it;
			error_vals[storage_counter] += sqrt(sqrNormDiff(x_k, x, N));
			gauge_it[storage_counter] = it;
			gauge_vals[storage_counter] += sqrt(sqrNormDiff(x_down, x_up, N));
			storage_counter++;
		}
		stop = omp_get_wtime();
		duration += stop - start;
		for (int i = 0; i < N; i++) {
			x_sol[i] += x_k[i];
		}
	} 
	cout << M << " " << N << " " << duration << " " << max_it_stop << " ";

	for (int i = 0; i < N; i++) {
		x_sol[i] /= n_runs;
	}

	double* res = new double[M];
	for (int i = 0; i < M; i++)
		res[i] = b[i] - dotProductCSR(i, row_idx, cols, values, x_sol);
	cout << sqrNorm(res, M) << " ";
	delete[] res;

	double stop_total = omp_get_wtime();
	double duration_total = stop_total - start_total;

	cout << sqrNormDiff(x_sol, x, N) << " " << duration_total << endl;

	string filename_error = "errors/tomo_stop/" + matrix_type + "/SRKWOR_box_proj_error_" + to_string(M) + "_" + to_string(N) + "_" + to_string(max_it_stop);
	string filename_gauge = "errors/tomo_stop/" + matrix_type + "/SRKWOR_box_proj_gauge_" + to_string(M) + "_" + to_string(N) + "_" + to_string(max_it_stop);

	if (argc == 7) {
		int seed = atoi(argv[6]);
		filename_error += "_" + to_string(seed) + ".txt";
		filename_gauge += "_" + to_string(seed) + ".txt";
	}
	else {
		filename_error += ".txt";
		filename_gauge += ".txt";		
	}

	ofstream file_error(filename_error);
	ofstream file_gauge(filename_gauge);
	if (file_error.is_open() && file_gauge.is_open()) {
		for (int i = 0; i < error_vals.size(); i++) {
			file_error << error_it[i] << " " << error_vals[i]/n_runs << endl;
			file_gauge << gauge_it[i] << " " << gauge_vals[i]/n_runs << endl;
		}
		file_error.close();
		file_gauge.close();
	}
	else {
		cout << "ERROR: Invalid input file for error or residual output file." << endl;
		exit(1);
	}

	delete[] x_k;
	delete[] x_down;
	delete[] x_up;

	delete[] row_idx;
	delete[] cols;
	delete[] values;
	delete[] b;
	delete[] x;
	delete[] x_sol;

	return 0;
}