#include "aux_func.h"
#include <iostream>
#include <fstream>
#include <sstream>
#include <random>
#include <algorithm>
#include <iomanip>
using namespace std;

double sqrNorm(double * vec, int size) {
	double norm = 0;
	for (int i = 0; i < size; i++)
		norm += vec[i]*vec[i];
	return norm;
}

double sqrNormDiff(double * vec1, double * vec2, int size) {
	double norm = 0;
	double dif = 0;
	for (int i = 0; i < size; i++) {
		dif = vec1[i] - vec2[i];
		norm += dif*dif;
	}
	return norm;
}

double Norm1Diff(double * vec1, double * vec2, int size) {
	double norm = 0;
	double dif = 0;
	for (int i = 0; i < size; i++) {
		dif = vec1[i] - vec2[i];
		norm += abs(dif);
	}
	return norm;
}

double NormInfDiff(double * vec1, double * vec2, int size) {
	double norm = 0;
	double dif = 0;
	double val;
	for (int i = 0; i < size; i++) {
		dif = vec1[i] - vec2[i];
		val = abs(dif);
		if (val > norm)
			norm = val;
	}
	return norm;
}

double sqrNormMatrixCol(double ** matrix, int col, int size) {
	double norm = 0;
	for (int i = 0; i < size; i++)
		norm += matrix[i][col]*matrix[i][col];
	return norm;
}

double dotProduct(double * vec1, double * vec2, int size) {
	double dot_p = 0;
	for (int i = 0; i < size; i++)
		dot_p += vec1[i]*vec2[i];
	return dot_p;
}

double dotProductCol(double ** matrix, int col, double * vec2, int size) {
	double dot_p = 0;
	for (int i = 0; i < size; i++)
		dot_p += matrix[i][col]*vec2[i];
	return dot_p;
}

void importDenseSystemTXT(int M, int N, string A_filename, string b_filename, string x_filename, double**& A, double*& b, double*& x) {
	
	ifstream file_A;
	file_A.open(A_filename);
	if (!file_A.is_open()) {
		cout << "Error in opening the matrix file" << endl;
		exit(1);
	}

	double * aux;
	aux = new double[(long)M*(long)N];
	A = new double*[(long)M];
	for (long i = 0; i < M; i++)
		A[i] = &aux[i * N];

	for (int i = 0; i < M; i++)
		for (int j = 0; j < N; j++)
			file_A >> A[i][j];

	file_A.close();

	ifstream file_b;
	file_b.open(b_filename);
	if (!file_b.is_open()) {
		cout << "Error in opening the b vector file" << endl;
		delete[] A[0];
		delete[] A;
		exit(1);
	}

	b = new double[M];

	for (int i = 0; i < M; i++)
		file_b >> b[i];

	file_b.close();

	ifstream file_x;
	file_x.open(x_filename);
	if (!file_x.is_open()) {
		cout << "Error in opening the x vector file" << endl;
		delete[] A[0];
		delete[] A;
		delete[] b;
		exit(1);
	}

	x = new double[N];

	for (int i = 0; i < N; i++)
		file_x >> x[i];

	file_x.close();
}

void importDenseSystemBIN(int M, int N, string A_filename, string b_filename, string x_filename, double**& A, double*& b, double*& x) {
	
	ifstream file_A;
	file_A.open(A_filename, ios::binary);
	if (!file_A.is_open()) {
		cout << "Error in opening the matrix file" << endl;
		exit(1);
	}

	double * aux;
	aux = new double[(long)M*(long)N];
	A = new double*[(long)M];
	for (long i = 0; i < M; i++)
		A[i] = &aux[i * N];

	for (int i = 0; i < M; i++)
		for (int j = 0; j < N; j++)
			file_A.read(reinterpret_cast<char *>(&A[i][j]), sizeof(A[i][j]));

	file_A.close();

	ifstream file_b;
	file_b.open(b_filename, ios::binary);
	if (!file_b.is_open()) {
		cout << "Error in opening the b vector file" << endl;
		delete[] A[0];
		delete[] A;
		exit(1);
	}

	b = new double[M];

	for (int i = 0; i < M; i++)
		file_b.read(reinterpret_cast<char *>(&b[i]), sizeof(b[i]));

	file_b.close();

	ifstream file_x;
	file_x.open(x_filename, ios::binary);
	if (!file_x.is_open()) {
		cout << "Error in opening the x vector file" << endl;
		delete[] A[0];
		delete[] A;
		delete[] b;
		exit(1);
	}

	x = new double[N];

	for (int i = 0; i < N; i++)
		file_x.read(reinterpret_cast<char *>(&x[i]), sizeof(x[i]));

	file_x.close();
}

void importDenseMatrixTXT(int M, int N, string A_filename, double**& A) {

	ifstream file_A;
	file_A.open(A_filename);
	if (!file_A.is_open()) {
		cout << "Error in opening the matrix file" << endl;
		exit(1);
	}

	double * aux = new double[M*N];
	A = new double*[M];
	for (int i = 0; i < M; i++)
		A[i] = &aux[i * N];

	for (int i = 0; i < M; i++)
		for (int j = 0; j < N; j++)
			file_A >> A[i][j];

	file_A.close();
}

void importDenseMatrixBIN(int M, int N, string A_filename, double**& A) {

	ifstream file_A;
	file_A.open(A_filename, ios::binary);
	if (!file_A.is_open()) {
		cout << "Error in opening the matrix file" << endl;
		exit(1);
	}

	double * aux;
	aux = new double[(long)M*(long)N];
	A = new double*[(long)M];
	for (long i = 0; i < M; i++)
		A[i] = &aux[i * N];

	for (int i = 0; i < M; i++)
		for (int j = 0; j < N; j++)
			file_A.read(reinterpret_cast<char *>(&A[i][j]), sizeof(A[i][j]));

	file_A.close();
}

void importSparseMatrixBIN(int M, int N, int& NNZ, string filename_row_idx, string filename_cols, string filename_values, int*& row_idx, int*& cols, double*& values) {

	row_idx = new int[M+1];

	ifstream file_row_idx;
	file_row_idx.open(filename_row_idx, ios::binary);
	if (file_row_idx.is_open())	{
		for (int i = 0; i < M+1; i++) {
			file_row_idx.read(reinterpret_cast<char *>(&row_idx[i]), sizeof(row_idx[i]));
		}
		file_row_idx.close();
	}
	else {
		cout << "ERROR: Invalid input file for CSR array with row indices." << endl;
		delete[] row_idx;
		exit(1);
	}

	ifstream file_cols;
	file_cols.open(filename_cols, ios::binary);
	if (file_cols.is_open()) {
		file_cols.read(reinterpret_cast<char *>(&NNZ), sizeof(NNZ));
		cols = new int[NNZ];
		for (int i = 0; i < NNZ; i++) {
			file_cols.read(reinterpret_cast<char *>(&cols[i]), sizeof(cols[i]));
		}
		file_cols.close();
	}
	else {
		cout << "ERROR: Invalid input file for CSR array with column indices." << endl;
		delete[] row_idx;
		exit(1);
	}

	ifstream file_values;
	file_values.open(filename_values, ios::binary);
	if (file_values.is_open())	{
		file_values.read(reinterpret_cast<char *>(&NNZ), sizeof(NNZ));
		values = new double[NNZ];
		for (int i = 0; i < NNZ; i++) 
			file_values.read(reinterpret_cast<char *>(&values[i]), sizeof(values[i]));
		file_values.close();
	}
	else {
		cout << "ERROR: Invalid input file for CSR array with values." << endl;
		delete[] cols;
		delete[] row_idx;
		exit(1);
	}

	return;
}

void importbVectorTXT(int M, string b_filename, double*& b) {
	ifstream file;
	file.open(b_filename);
	if (!file.is_open())
		exit(1);

	b = new double[M];

	for (int i = 0; i < M; i++)
		file >> b[i];
	file.close();
}

void importxVectorTXT(int N, string x_filename, double*& x) {
	ifstream file;
	file.open(x_filename);
	if (!file.is_open())
		exit(1);

	x = new double[N];

	for (int i = 0; i < N; i++)
		file >> x[i];
	file.close();
}

void importbVectorBIN(int M, string b_filename, double*& b) {

	b = new double[M];

	ifstream file;
	file.open(b_filename, ios::binary);
	if (file.is_open())	{
		for (int i = 0; i < M; i++) {
			file.read(reinterpret_cast<char *>(&b[i]), sizeof(b[i]));
		}
		file.close();
	}
	else {
		cout << "ERROR: Invalid input file for b vector." << endl;
		delete[] b;
		exit(1);
	}
}

void importxVectorBIN(int N, string x_filename, double*& x) {

	x = new double[N];

	ifstream file;
	file.open(x_filename, ios::binary);
	if (file.is_open())	{
		for (int i = 0; i < N; i++) {
			file.read(reinterpret_cast<char *>(&x[i]), sizeof(x[i]));
		}
		file.close();
	}
	else {
		cout << "ERROR: Invalid input file for x vector." << endl;
		delete[] x;
		exit(1);
	}
}

void convertMatrixTXT(int M, int N, string A_filename) {

	string input_etx = ".bin";
	string output_etx = ".txt";

	string input_name = A_filename;
	string output_name = input_name.substr(0, input_name.length() - input_etx.length());

	output_name = output_name + output_etx;

	ifstream file_in(input_name, ios::binary);
	ofstream file_out(output_name);
	file_out << std::fixed << std::setprecision(std::numeric_limits<double>::max_digits10);
	if (file_in.is_open() && file_out.is_open()) {
		double num;
		for (int i = 0; i < M; i++) {
			for (int j = 0; j < N-1; j++) {
				file_in.read(reinterpret_cast<char *>(&num), sizeof(num));
				file_out << num << " ";
			}
			for (int j = N-1; j < N; j++) {
				file_in.read(reinterpret_cast<char *>(&num), sizeof(num));
				file_out << num << endl;
			}
		}
		file_in.close();
		file_out.close();
	}	
	else {
		cout << "ERROR: Invalid input file for matrix." << endl;
		exit(1);
	}

	return;	
}

void convertMatrixBIN(int M, int N, string A_filename) {

	string input_etx = ".txt";
	string output_etx = ".bin";

	string input_name = A_filename;
	string output_name = input_name.substr(0, input_name.length() - input_etx.length());

	output_name = output_name + output_etx;

	ifstream file_in(input_name);
	ofstream file_out(output_name, ios::binary);
	if (file_in.is_open() && file_out.is_open()) {
		double num;
		for (int i = 0; i < M; i++) {
			for (int j = 0; j < N; j++) {
				file_in >> num;
				file_out.write(reinterpret_cast<char*>(&num), sizeof(num));
			}
		}
		file_in.close();
		file_out.close();
	}	
	else {
		cout << "ERROR: Invalid input file for matrix." << endl;
		exit(1);
	}

	return;	
}

void convertxVectorBIN(int N, string x_filename) {

	string input_etx = ".txt";
	string output_etx = ".bin";

	string input_name = x_filename;
	string output_name = input_name.substr(0, input_name.length() - input_etx.length());

	output_name = output_name + output_etx;

	ifstream file_in(input_name);
	ofstream file_out(output_name, ios::binary);
	if (file_in.is_open() && file_out.is_open()) {
		double num;
		for (int i = 0; i < N; i++) {
			file_in >> num;
			file_out.write(reinterpret_cast<char*>(&num), sizeof(num));
		}
		file_in.close();
		file_out.close();
	}	
	else {
		cout << "ERROR: Invalid input file for x vector." << endl;
		exit(1);
	}

	return;
}

void convertbVectorBIN(int M, string b_filename) {

	string input_etx = ".txt";
	string output_etx = ".bin";

	string input_name = b_filename;
	string output_name = input_name.substr(0, input_name.length() - input_etx.length());

	output_name = output_name + output_etx;

	ifstream file_in(input_name);
	ofstream file_out(output_name, ios::binary);
	if (file_in.is_open() && file_out.is_open()) {
		double num;
		for (int i = 0; i < M; i++) {
			file_in >> num;
			file_out.write(reinterpret_cast<char*>(&num), sizeof(num));
		}
		file_in.close();
		file_out.close();
	}	
	else {
		cout << "ERROR: Invalid input file for b vector." << endl;
		exit(1);
	}

	return;
}

void convertxVectorTXT(int N, string x_filename) {

	string input_etx = ".bin";
	string output_etx = ".txt";

	string input_name = x_filename;
	string output_name = input_name.substr(0, input_name.length() - input_etx.length());

	output_name = output_name + output_etx;

	ifstream file_in(input_name, ios::binary);
	ofstream file_out(output_name);
	file_out << std::fixed << std::setprecision(std::numeric_limits<double>::max_digits10);
	if (file_in.is_open() && file_out.is_open()) {
		double num;
		for (int i = 0; i < N; i++) {
			file_in.read(reinterpret_cast<char *>(&num), sizeof(num));
			file_out << num << endl;
		}
		file_in.close();
		file_out.close();
	}	
	else {
		cout << "ERROR: Invalid input file for x vector." << endl;
		exit(1);
	}

	return;
}

void convertbVectorTXT(int M, string b_filename) {

	string input_etx = ".bin";
	string output_etx = ".txt";

	string input_name = b_filename;
	string output_name = input_name.substr(0, input_name.length() - input_etx.length());

	output_name = output_name + output_etx;

	ifstream file_in(input_name, ios::binary);
	ofstream file_out(output_name);
	file_out << std::fixed << std::setprecision(std::numeric_limits<double>::max_digits10);
	if (file_in.is_open() && file_out.is_open()) {
		double num;
		for (int i = 0; i < M; i++) {
			file_in.read(reinterpret_cast<char *>(&num), sizeof(num));
			file_out << num << endl;
		}
		file_in.close();
		file_out.close();
	}	
	else {
		cout << "ERROR: Invalid input file for b vector." << endl;
		exit(1);
	}

	return;
}