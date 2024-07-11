#include "aux_func.h"
#include "csr.h"
#include <iostream>
#include <math.h>
#include <omp.h>
#include <random>
#include <fstream>
using namespace std;

// ./bin/printSparseRowNorms.exe ct_gaussian 19558 16384 2

int main (int argc, char *argv[]) {

	if(argc != 4 && argc != 5) {
		cout << "Incorrect number of arguments: Corret usage is ";
		cout << "'./bin/printSparseRowNorms.exe <data_set> <M> <N>'" << endl;
		exit(1);
	}

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
	if (argc == 4 && matrix_type.compare("ct") == 0) {
		string filename_row_idx = "../data/ct/row_idx_" + to_string(M) + "_" + to_string(N) + ".bin";
		string filename_cols = "../data/ct/cols_" + to_string(M) + "_" + to_string(N) + ".bin";
		string filename_values_csr = "../data/ct/values_" + to_string(M) + "_" + to_string(N) + ".bin";
		importSparseMatrixBIN(M, N, NNZ, filename_row_idx, filename_cols, filename_values_csr, row_idx, cols, values_csr);
	}
	else if (argc == 5 && matrix_type.compare("ct_gaussian") == 0) {
		int seed = atoi(argv[4]);
		string filename_row_idx = "../data/ct_gaussian/row_idx_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		string filename_cols = "../data/ct_gaussian/cols_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		string filename_values_csr = "../data/ct_gaussian/values_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		importSparseMatrixBIN(M, N, NNZ, filename_row_idx, filename_cols, filename_values_csr, row_idx, cols, values_csr);
	}
	else if (argc == 5 && matrix_type.compare("ct_poisson") == 0) {
		int seed = atoi(argv[4]);
		string filename_row_idx = "../data/ct_poisson/row_idx_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		string filename_cols = "../data/ct_poisson/cols_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		string filename_values_csr = "../data/ct_poisson/values_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		importSparseMatrixBIN(M, N, NNZ, filename_row_idx, filename_cols, filename_values_csr, row_idx, cols, values_csr);
	}
	else {
		cout << "Incorrect number of arguments: Corret usage is ";
		cout << "'./bin/printSparseRowNorms.exe <data_set> <M> <N>'" << endl;
		exit(1);
	}

	vector<double> sqrNorm_line(M);
	double sqr_matrixNorm = 0;
	for (int i = 0; i < M; i++) {
		sqrNorm_line[i] = sqrNormRow(i, row_idx, cols, values_csr);
		if (sqrNorm_line[i] == 0) {
			cout << "Invalid input: matrix with zero norm line" << endl;
			delete[] row_idx;
			delete[] cols;
			delete[] values_csr;
			exit(1);
		}
		sqr_matrixNorm += sqrNorm_line[i];
	}

	string filename_norms = "outputs/seq_sparse/" + matrix_type + "/RowNorms_" + to_string(M) + "_" + to_string(N);

	if (argc == 5) {
		int seed = atoi(argv[4]);
		filename_norms += "_" + to_string(seed) + ".txt";
	}
	else {
		filename_norms += ".txt";
	}

	ofstream file_norms(filename_norms);
	if (file_norms.is_open()) {
		for (int i = 0; i < sqrNorm_line.size(); i++) {
			file_norms << sqrNorm_line[i] << endl;
		}
		file_norms.close();
	}
	else {
		cout << "ERROR: Invalid input file for error or residual output file." << endl;
		delete[] row_idx;
		delete[] cols;
		delete[] values_csr;
		exit(1);
	}

	delete[] row_idx;
	delete[] cols;
	delete[] values_csr;

	return 0;
}