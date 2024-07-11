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

./bin/CK_box_proj_csr_max_it_data.exe ct 1 3112 484 500000 1000
./bin/CK_box_proj_csr_max_it_data.exe ct_gaussian 1 4886 1024 500000 1000 1
./bin/CK_box_proj_csr_max_it_data.exe ct_poisson 1 4886 1024 500000 1000 1

./bin/CK_box_proj_csr_max_it_data.exe ct 5 3112 484 500000 1000
./bin/CK_box_proj_csr_max_it_data.exe ct_gaussian 5 4886 1024 500000 1000 1
./bin/CK_box_proj_csr_max_it_data.exe ct_poisson 5 4886 1024 500000 1000 1

*/

int main (int argc, char *argv[]) {

	if(argc != 7 && argc != 8) {
		cout << "Incorrect number of arguments: Corret usage is ";
		cout << "'./bin/CK_box_proj_csr_max_it_data.exe <data_set> <n_runs> <M> <N> <max_it_stop> <step_save>'" << endl;
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
	int step_save = atoi(argv[6]);

	string matrix_type = argv[1];
	string filename_row_idx;
	string filename_cols;
	string filename_values;
	string filename_b;
	string filename_x;
	if (argc == 7 && matrix_type.compare("ct") == 0) {
		filename_row_idx = "../data/ct/row_idx_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_cols = "../data/ct/cols_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_values = "../data/ct/values_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_b = "../data/ct/b_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_x = "../data/ct/x_" + to_string(M) + "_" + to_string(N) + ".bin";
	}
	else if (argc == 8 && matrix_type.compare("ct_gaussian") == 0) {
		int seed = atoi(argv[7]);
		filename_row_idx = "../data/ct_gaussian/row_idx_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_cols = "../data/ct_gaussian/cols_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_values = "../data/ct_gaussian/values_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_b = "../data/ct_gaussian/b_error_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_x = "../data/ct_gaussian/x_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
	}
	else if (argc == 8 && matrix_type.compare("ct_poisson") == 0) {
		int seed = atoi(argv[7]);
		filename_row_idx = "../data/ct_poisson/row_idx_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_cols = "../data/ct_poisson/cols_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_values = "../data/ct_poisson/values_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_b = "../data/ct_poisson/b_error_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_x = "../data/ct_poisson/x_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
	}
	else {
		cout << "Incorrect number of arguments: Corret usage is ";
		cout << "'./bin/CK_box_proj_csr_max_it_data.exe <data_set> <n_runs> <M> <N> <max_it_stop> <step_save>'" << endl;
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

	double* x_k = new double[N];
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

	int storage_size = ceil(max_it_stop/step_save);
	int storage_counter;
	vector<double> error_vals(storage_size, 0);
	vector<double> error_1_vals(storage_size, 0);
	vector<double> error_inf_vals(storage_size, 0);
	vector<double> res_vals(storage_size, 0);
	vector<int> error_it(storage_size);
	vector<int> res_it(storage_size);
	double* res_vec = new double[M];
	double sqr_norm_res;

	for(int run = 0; run < n_runs; run++) {
		for (int i = 0; i < N; i++) {
			x_k[i] = 0;
		}
		it = 0;
		storage_counter = 0;
		start = omp_get_wtime();
		while(it < max_it_stop) {
			it++;
			line = it%M;
			scale = (b[line]-dotProductCSR(line, row_idx, cols, values, x_k))/sqrNorm_line[line];
			scaleVecLineBoxProj(line, row_idx, cols, values, scale, x_k);
			if (it%step_save == 1) {
				error_it[storage_counter] = it;
				error_vals[storage_counter] += sqrt(sqrNormDiff(x_k, x, N));
				error_1_vals[storage_counter] += Norm1Diff(x_k, x, N);
				error_inf_vals[storage_counter] += NormInfDiff(x_k, x, N);
				for (int i = 0; i < M; i++) {
					res_vec[i] = b[i] - dotProductCSR(i, row_idx, cols, values, x_k);
				}
				sqr_norm_res = 0;
				for (int i = 0; i < M; i++)
					sqr_norm_res += res_vec[i]*res_vec[i];
				res_it[storage_counter] = it;
				res_vals[storage_counter] += sqrt(sqr_norm_res);
				storage_counter++;
			}
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

	string filename_error = "errors/seq_sparse/" + matrix_type + "/CK_box_proj_error_" + to_string(M) + "_" + to_string(N) + "_" + to_string(max_it_stop);
	string filename_res = "errors/seq_sparse/" + matrix_type + "/CK_box_proj_res_" + to_string(M) + "_" + to_string(N) + "_" + to_string(max_it_stop);

	if (argc == 8) {
		int seed = atoi(argv[7]);
		filename_error += "_" + to_string(seed) + ".txt";
		filename_res += "_" + to_string(seed) + ".txt";
	}
	else {
		filename_error += ".txt";
		filename_res += ".txt";		
	}

	ofstream file_error(filename_error);
	ofstream file_res(filename_res);
	if (file_error.is_open() && file_res.is_open()) {
		for (int i = 0; i < error_vals.size(); i++) {
			file_error << error_it[i] << " " << error_vals[i]/n_runs << " " << error_1_vals[i]/n_runs << " " << error_inf_vals[i]/n_runs << endl;
			file_res << res_it[i] << " " << res_vals[i]/n_runs << endl;
		}
		file_error.close();
		file_res.close();
	}
	else {
		cout << "ERROR: Invalid input file for error or residual output file." << endl;
		exit(1);
	}

	delete[] x_k;
	delete[] res_vec;

	delete[] row_idx;
	delete[] cols;
	delete[] values;
	delete[] b;
	delete[] x;
	delete[] x_sol;

	return 0;
}