#include "aux_func.h"
#include "csr.h"
#include <iostream>
#include <math.h>
#include <omp.h>
#include <algorithm>
#include <random>
#include <fstream>
using namespace std;

int main (int argc, char *argv[]) {

	if(argc != 6 && argc != 7) {
		cout << "Incorrect number of arguments: Corret usage is ";
		cout << "'./bin/SRKAWOR_box_proj_csr_parallel_max_it_critical_no_for.exe <data_set> <n_runs> <M> <N> <max_it_stop>'" << endl;
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
		cout << "'./bin/SRKAWOR_box_proj_csr_parallel_max_it_critical_no_for.exe <data_set> <n_runs> <M> <N> <max_it_stop>'" << endl;
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
			num_threads = omp_get_num_threads();
	}

	vector<double> sqrNorm_line(M);
	for (int i = 0; i < M; i++) {
		sqrNorm_line[i] = num_threads*sqrNormRow(i, row_idx, cols, values);
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

	vector<int> samp_line(M);
	for (int i = 0; i < M; i++)
		samp_line[i] = i;
	mt19937 rng(1);

	double* x_k = new double[N];
	x_sol = new double[N];
	for (int i = 0; i < N; i++) {
		x_sol[i] = 0;
	}
	double* errors_x = new double[n_runs];
	double total_error = 0;
	double scale;
	int line;
	long long it;

	double start; 
	double stop;
	double duration;
	double total_duration = 0;
	vector<double> durations;

	int t_id;

	for(int run = 0; run < n_runs; run++) {
		for (int i = 0; i < N; i++) {
			x_k[i] = 0;
		}
		it = 0;
		shuffle(begin(samp_line), end(samp_line), rng);
		start = omp_get_wtime();
		#pragma omp parallel private(line, scale, t_id) firstprivate(it)
		{
			t_id = omp_get_thread_num();
			while(it < max_it_stop) {
				it++;
				#pragma omp barrier
				line = samp_line[(num_threads*it+t_id)%M];
				scale = (b[line]-dotProductCSR(line, row_idx, cols, values, x_k))/sqrNorm_line[line];
				#pragma omp critical
					scaleVecLine(line, row_idx, cols, values, scale, x_k);
				#pragma omp barrier
				#pragma omp for
					for (int i = 0; i < N; i++) {
						if (x_k[i] < 0)
							x_k[i] = 0;
						else if (x_k[i] > 1)
							x_k[i] = 1;
					}
			}
		}
		stop = omp_get_wtime();
		duration = stop - start;
		total_duration += duration;
		durations.push_back(duration);
		for (int i = 0; i < N; i++) {
			x_sol[i] += x_k[i];
		}
		errors_x[run] = sqrNormDiff(x_k, x, N);
		total_error += errors_x[run];
	}
	cout << M << " " << N << " " << total_duration << " " << max_it_stop << " ";

	for (int i = 0; i < N; i++) {
		x_sol[i] /= n_runs;
	}
	double time_variance = 0;
	total_duration /= n_runs;
	for (int i = 0; i < n_runs; i++) {
		time_variance += (durations[i]-total_duration)*(durations[i]-total_duration);
	}
	time_variance /= n_runs;
	time_variance = sqrt(time_variance);

	double* res = new double[M];
	for (int i = 0; i < M; i++)
		res[i] = b[i] - dotProductCSR(i, row_idx, cols, values, x_sol);
	cout << sqrNorm(res, M) << " ";
	delete[] res;

	double error_variance = 0;
	total_error /= n_runs;
	for (int i = 0; i < n_runs; i++) {
		error_variance += (errors_x[i]-total_error)*(errors_x[i]-total_error);
	}
	error_variance /= n_runs;
	error_variance = sqrt(error_variance);

	double rel_error = sqrt(sqrNormDiff(x_sol, x, N));
	rel_error /= sqrt(sqrNorm(x, N));
	rel_error *= 100;

	double stop_total = omp_get_wtime();
	double duration_total = stop_total - start_total;

	cout << sqrNormDiff(x_sol, x, N) << " " << error_variance << " " << rel_error << " " << duration_total << " " << time_variance << endl;

	string filename_sol = "outputs/omp_sparse/" + matrix_type + "/SRKAWOR_box_proj_critical_no_for_sol_" + to_string(M) + "_" + to_string(N) + "_" + to_string(num_threads) + "_" + to_string(max_it_stop);

	if (argc == 7) {
		int seed = atoi(argv[6]);
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

	delete[] row_idx;
	delete[] cols;
	delete[] values;
	delete[] b;
	delete[] x;
	delete[] x_sol;
	delete[] errors_x;

	return 0;
}
