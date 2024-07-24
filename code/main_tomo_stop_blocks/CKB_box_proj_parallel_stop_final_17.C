#include "aux_func.h"
#include "csr.h"
#include <iostream>
#include <iomanip>
#include <math.h>
#include <omp.h>
#include <algorithm>
#include <random>
#include <fstream>
#include <sstream>
using namespace std;

#define BLOCK_LOW(id, p, np) ((id) * (np) / (p))
#define BLOCK_HIGH(id, p, np) (BLOCK_LOW((id) + 1, p, np) - 1)
#define BLOCK_SIZE(id, p, np) (BLOCK_HIGH(id, p, np) - BLOCK_LOW(id, p, np) + 1)

int main (int argc, char *argv[]) {

	if(argc != 8 && argc != 9) {
		cout << "Incorrect number of arguments: Corret usage is ";
		cout << "'./bin/CKB_box_proj_parallel_stop_final_17.exe <data_set> <n_runs> <M> <N> <number_of_blocks> <min_it> <bucket_size>'" << endl;
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
	double number_of_blocks = atoi(argv[5]);
	int min_it = atoi(argv[6]);
	int bucket_size = atoi(argv[7]);

	string matrix_type = argv[1];
	string filename_row_idx;
	string filename_cols;
	string filename_values;
	string filename_b;
	string filename_x;
	if (argc == 8 && matrix_type.compare("ct") == 0) {
		filename_row_idx = "../data/ct/row_idx_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_cols = "../data/ct/cols_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_values = "../data/ct/values_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_b = "../data/ct/b_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_x = "../data/ct/x_" + to_string(M) + "_" + to_string(N) + ".bin";
	}
	else if (argc == 9 && matrix_type.compare("ct_gaussian") == 0) {
		int seed = atoi(argv[8]);
		filename_row_idx = "../data/ct_gaussian/row_idx_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_cols = "../data/ct_gaussian/cols_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_values = "../data/ct_gaussian/values_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_b = "../data/ct_gaussian/b_error_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_x = "../data/ct_gaussian/x_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
	}
	else if (argc == 9 && matrix_type.compare("ct_poisson") == 0) {
		int seed = atoi(argv[8]);
		filename_row_idx = "../data/ct_poisson/row_idx_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_cols = "../data/ct_poisson/cols_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_values = "../data/ct_poisson/values_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_b = "../data/ct_poisson/b_error_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_x = "../data/ct_poisson/x_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
	}
	else {
		cout << "Incorrect number of arguments: Corret usage is ";
		cout << "'./bin/CKB_box_proj_parallel_stop_final_17.exe <data_set> <n_runs> <M> <N> <number_of_blocks> <min_it> <bucket_size>'" << endl;
		exit(1);
	}

	double start_total = omp_get_wtime();

	importSparseMatrixBIN(M, N, NNZ, filename_row_idx, filename_cols, filename_values, row_idx, cols, values);
	importbVectorBIN(M, filename_b, b);
	importxVectorBIN(N, filename_x, x);

	int num_threads;
	#pragma omp parallel
	{
		#pragma omp single
		{
			num_threads = omp_get_num_threads();
		}
	}

	vector<double> sqrNorm_line(M);
	for (int i = 0; i < M; i++) {
		sqrNorm_line[i] = sqrNormRow(i, row_idx, cols, values);
		// sqrNorm_line[i] = num_threads*sqrNormRow(i, row_idx, cols, values);
		if (sqrNorm_line[i] == 0) {
			cout << "Invalid input: matrix with zero norm line" << endl;
			delete[] row_idx;
			delete[] cols;
			delete[] values;
			delete[] b;
			delete[] x;
			exit(1);
		}
	}

	double* x_k = new double[N];
	double* x_down = new double[N];
	double* x_up = new double[N];
	x_sol = new double[N];
	for (int i = 0; i < N; i++) {
		x_sol[i] = 0;
	}
	double scale;
	int line_down;
	int line_up;
	long long it;
	long long avg_it = 0;
	int it_final;

	double start; 
	double stop;
	double duration = 0;
	bool solution_found;

	int col, index, t_id;

	vector<double> store_diff;
	double curr_diff;

	int n_blocks = number_of_blocks*num_threads;

	for(int run = 0; run < n_runs; run++) {
		for (int i = 0; i < N; i++) {
			x_k[i] = 0;
			x_down[i] = 0;
			x_up[i] = 0;
		}
		store_diff.clear();
		solution_found = false;
		it = 0;
		start = omp_get_wtime();
		#pragma omp parallel private(line_down, line_up, scale, t_id, col, index) firstprivate(it)
		{
			t_id = omp_get_thread_num();
			if (t_id == 0) {
				while(!solution_found) {
					it++;
					for (int block_it = 0; block_it < number_of_blocks; block_it++) {
						line_down = BLOCK_LOW(block_it*num_threads+t_id, n_blocks, M);
						line_up = M-line_down-1;
						for (int s = 0; s < BLOCK_SIZE(block_it*num_threads+t_id, n_blocks, M); s++) {
							scale = (b[line_down]-dotProductCSR(line_down, row_idx, cols, values, x_down))/sqrNorm_line[line_down];
							index = row_idx[line_down];
							while (index < row_idx[line_down+1]) {
								col = cols[index];
								x_down[col] += scale*values[index];
								if (x_down[col] < 0)
									x_down[col] = 0;
								else if (x_down[col] > 1)
									x_down[col] = 1;
								index++;
							}
							line_down++;
							scale = (b[line_up]-dotProductCSR(line_up, row_idx, cols, values, x_up))/sqrNorm_line[line_up];
							index = row_idx[line_up];
							while (index < row_idx[line_up+1]) {
								col = cols[index];
								x_up[col] += scale*values[index];
								if (x_up[col] < 0)
									x_up[col] = 0;
								else if (x_up[col] > 1)
									x_up[col] = 1;
								index++;
							}
							line_up--;
						}
					}
					curr_diff = sqrNormDiff(x_up, x_down, N);
					if (store_diff.size() == 0) {
						if (it > min_it) {
							store_diff.push_back(curr_diff);
						}
					}
					else {
						if (curr_diff < store_diff[0]) {
							store_diff.clear();
							store_diff.push_back(curr_diff);
						}
						else {
							store_diff.push_back(curr_diff);
							for (int i = 0; i < N; i++)
								x_k[i] = 0.5*(x_down[i]+x_up[i]);
							if (store_diff.size() == bucket_size+1) {
								it_final = it;
								solution_found = true;
							}
						}
					}
				}
			}	
			else {
				while(!solution_found) {
					it++;
					for (int block_it = 0; block_it < number_of_blocks; block_it++) {
						line_down = BLOCK_LOW(block_it*num_threads+t_id, n_blocks, M);
						line_up = M-line_down-1;
						for (int s = 0; s < BLOCK_SIZE(block_it*num_threads+t_id, n_blocks, M); s++) {
							scale = (b[line_down]-dotProductCSR(line_down, row_idx, cols, values, x_down))/sqrNorm_line[line_down];
							index = row_idx[line_down];
							while (index < row_idx[line_down+1]) {
								col = cols[index];
								x_down[col] += scale*values[index];
								if (x_down[col] < 0)
									x_down[col] = 0;
								else if (x_down[col] > 1)
									x_down[col] = 1;
								index++;
							}
							line_down++;
							scale = (b[line_up]-dotProductCSR(line_up, row_idx, cols, values, x_up))/sqrNorm_line[line_up];
							index = row_idx[line_up];
							while (index < row_idx[line_up+1]) {
								col = cols[index];
								x_up[col] += scale*values[index];
								if (x_up[col] < 0)
									x_up[col] = 0;
								else if (x_up[col] > 1)
									x_up[col] = 1;
								index++;
							}
							line_up--;
						}
					}
				}
			}
		}
		stop = omp_get_wtime();
		avg_it += it_final-bucket_size;
		duration += stop - start;
		for (int i = 0; i < N; i++) {
			x_sol[i] += x_k[i];
		}
	}
	cout << M << " " << N << " " << duration << " " << avg_it/n_runs << " ";

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

	string filename_sol = "outputs/tomo_stop/" + matrix_type + "/CKB_box_proj_sol_" + to_string(M) + "_" + to_string(N) + "_" + to_string(num_threads) + "_" + to_string(number_of_blocks);

	if (argc == 9) {
		int seed = atoi(argv[8]);
		filename_sol += "_" + to_string(seed) + ".txt";
	}
	else {
		filename_sol += ".txt";
	}

	ofstream file_sol(filename_sol);
	if (file_sol.is_open()) {
		for (int i = 0; i < N; i++) {
			file_sol << x_sol[i] << endl;
		}
		file_sol.close();
	}
	else {
		cout << "ERROR: Invalid input file for solution output file." << endl;
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