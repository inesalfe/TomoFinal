#include "aux_func.h"
#include "csr.h"
#include <iostream>
#include <math.h>
#include <omp.h>
#include <random>
using namespace std;

// ./bin/printSparseSystem.exe ct 3112 484
// ./bin/printSparseSystem.exe ct_gaussian 4886 1024 1

// ./bin/printSparseSystem.exe ct 12462 8072
// ./bin/printSparseSystem.exe ct_gaussian 19558 16384 2
// ./bin/printSparseSystem.exe ct_gaussian 29498 16384 2
// ./bin/printSparseSystem.exe ct_gaussian 14750 4096 2

int main (int argc, char *argv[]) {

	if(argc != 4 && argc != 5) {
		cout << "Incorrect number of arguments: Corret usage is ";
		cout << "'./bin/printSparseSystem.exe <data_set> <M> <N>'" << endl;
		exit(1);
	}

	double* b;
	double* b_error;
	double* x;
	double* x_ls;
	double* x_ls_pos;
	double* x_ls_box;
	int NNZ;
	int* row_idx;
	int* cols;
	double* values_csr;

	int M = atoi(argv[2]);
	int N = atoi(argv[3]);

	string matrix_type = argv[1];
	string filename_row_idx;
	string filename_cols;
	string filename_values_csr;
	string filename_b;
	string filename_b_error;
	string filename_x;
	string filename_x_ls;
	string filename_x_ls_pos;
	string filename_x_ls_box;
	if (argc == 4 && matrix_type.compare("ct") == 0) {
		string filename_row_idx = "../data/ct/row_idx_" + to_string(M) + "_" + to_string(N) + ".bin";
		string filename_cols = "../data/ct/cols_" + to_string(M) + "_" + to_string(N) + ".bin";
		string filename_values_csr = "../data/ct/values_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_b = "../data/ct/b_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_x = "../data/ct/x_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_x_ls = "../data/ct/x_ls_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_x_ls_pos = "../data/ct/x_ls_pos_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_x_ls_box = "../data/ct/x_ls_box_" + to_string(M) + "_" + to_string(N) + ".bin";
		importSparseMatrixBIN(M, N, NNZ, filename_row_idx, filename_cols, filename_values_csr, row_idx, cols, values_csr);
		importbVectorBIN(M, filename_b, b);
		importxVectorBIN(N, filename_x, x);
		importxVectorBIN(N, filename_x_ls, x_ls);
		importxVectorBIN(N, filename_x_ls_pos, x_ls_pos);
		importxVectorBIN(N, filename_x_ls_box, x_ls_box);
	}
	else if (argc == 5 && matrix_type.compare("ct_gaussian") == 0) {
		int seed = atoi(argv[4]);
		string filename_row_idx = "../data/ct_gaussian/row_idx_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		string filename_cols = "../data/ct_gaussian/cols_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		string filename_values_csr = "../data/ct_gaussian/values_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_b = "../data/ct_gaussian/b_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_b_error = "../data/ct_gaussian/b_error_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_x = "../data/ct_gaussian/x_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_x_ls = "../data/ct_gaussian/x_ls_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_x_ls_pos = "../data/ct_gaussian/x_ls_pos_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_x_ls_box = "../data/ct_gaussian/x_ls_box_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		importSparseMatrixBIN(M, N, NNZ, filename_row_idx, filename_cols, filename_values_csr, row_idx, cols, values_csr);
		importbVectorBIN(M, filename_b, b);
		importbVectorBIN(M, filename_b_error, b_error);
		importxVectorBIN(N, filename_x, x);
		importxVectorBIN(N, filename_x_ls, x_ls);
		importxVectorBIN(N, filename_x_ls_pos, x_ls_pos);
		importxVectorBIN(N, filename_x_ls_box, x_ls_box);
	}
	else if (argc == 5 && matrix_type.compare("ct_poisson") == 0) {
		int seed = atoi(argv[4]);
		string filename_row_idx = "../data/ct_poisson/row_idx_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		string filename_cols = "../data/ct_poisson/cols_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		string filename_values_csr = "../data/ct_poisson/values_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_b = "../data/ct_poisson/b_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_b_error = "../data/ct_poisson/b_error_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_x = "../data/ct_poisson/x_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_x_ls = "../data/ct_poisson/x_ls_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_x_ls_pos = "../data/ct_poisson/x_ls_pos_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_x_ls_box = "../data/ct_poisson/x_ls_box_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		importSparseMatrixBIN(M, N, NNZ, filename_row_idx, filename_cols, filename_values_csr, row_idx, cols, values_csr);
		importbVectorBIN(M, filename_b, b);
		importbVectorBIN(M, filename_b_error, b_error);
		importxVectorBIN(N, filename_x, x);
		importxVectorBIN(N, filename_x_ls, x_ls);
		importxVectorBIN(N, filename_x_ls_pos, x_ls_pos);
		importxVectorBIN(N, filename_x_ls_box, x_ls_box);
	}
	else {
		cout << "Incorrect number of arguments: Corret usage is ";
		cout << "'./bin/printSparseSystem.exe <data_set> <M> <N>'" << endl;
		exit(1);
	}

	for (int i = 0; i < 100; i++) {
		int index = row_idx[i];
		while (index < row_idx[i+1]) {
			cout << cols[index] << " ";
			index++;
		}
		cout << endl;
		index = row_idx[i];
		while (index < row_idx[i+1]) {
			cout << values_csr[index] << " ";
			index++;
		}
		cout << endl;
	}

	delete[] row_idx;
	delete[] cols;
	delete[] values_csr;
	delete[] b;
	delete[] x;
	delete[] x_ls;
	delete[] x_ls_pos;
	delete[] x_ls_box;

	return 0;
}