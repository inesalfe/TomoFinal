#include "aux_func.h"
#include "csr.h"
#include <iostream>
#include <math.h>
#include <omp.h>
#include <random>
#include <algorithm>
using namespace std;

int main (int argc, char *argv[]) {

	if(argc != 6 && argc != 7) {
		cout << "Incorrect number of arguments: Corret usage is ";
		cout << "'./bin/RK_box_proj_csr_max_it.exe <data_set> <n_runs> <M> <N> <max_it_stop>'" << endl;
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
		cout << "'./bin/RK_box_proj_csr_max_it.exe <data_set> <n_runs> <M> <N> <max_it_stop>'" << endl;
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

	discrete_distribution<> dist(sqrNorm_line.begin(), sqrNorm_line.end());

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

	for(int run = 0; run < n_runs; run++) {
		for (int i = 0; i < N; i++) {
			x_k[i] = 0;
		}
		mt19937 generator(run+1);
		it = 0;
		start = omp_get_wtime();
		while(it < max_it_stop) {
			it++;
			line = dist(generator);
			scale = (b[line]-dotProductCSR(line, row_idx, cols, values, x_k))/sqrNorm_line[line];
			scaleVecLineBoxProj(line, row_idx, cols, values, scale, x_k);
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

	delete[] x_k;

	delete[] row_idx;
	delete[] cols;
	delete[] values;
	delete[] b;
	delete[] x;
	delete[] x_sol;

	return 0;
}