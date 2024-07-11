#ifndef _AUX_FUNC_
#define _AUX_FUNC_
#include <string>

double sqrNorm(double * vec, int size);

double sqrNormDiff(double * vec1, double * vec2, int size);

double Norm1Diff(double * vec1, double * vec2, int size);

double NormInfDiff(double * vec1, double * vec2, int size);

double sqrNormMatrixCol(double ** matrix, int col, int size);

double dotProduct(double * vec1, double * vec2, int size);

double dotProductCol(double ** matrix, int col, double * vec2, int size);

void importDenseSystemTXT(int M, int N, std::string A_filename, std::string b_filename, std::string x_filename, double**& A, double*& b, double*& x);

void importDenseSystemBIN(int M, int N, std::string A_filename, std::string b_filename, std::string x_filename, double**& A, double*& b, double*& x);

void importDenseMatrixTXT(int M, int N, std::string A_filename, double**& A);

void importDenseMatrixBIN(int M, int N, std::string A_filename, double**& A);

void importSparseMatrixBIN(int M, int N, int& NNZ, std::string filename_row_idx, std::string filename_cols, std::string filename_values, int*& row_idx, int*& cols, double*& values);

void importbVectorTXT(int M, std::string b_filename, double*& b);

void importxVectorTXT(int N, std::string x_filename, double*& x);

void importbVectorBIN(int M, std::string b_filename, double*& b);

void importxVectorBIN(int N, std::string x_filename, double*& x);

void convertMatrixTXT(int M, int N, std::string A_filename);

void convertMatrixBIN(int M, int N, std::string A_filename);

void convertxVectorBIN(int N, std::string x_filename);

void convertbVectorBIN(int M, std::string b_filename);

void convertxVectorTXT(int N, std::string x_filename);

void convertbVectorTXT(int M, std::string b_filename);

#endif