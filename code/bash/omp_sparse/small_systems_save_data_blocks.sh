#!/bin/bash

# bash bash/omp_sparse/small_systems_save_data_blocks.sh > outputs/progress/small_systems_save_data_blocks.txt

export OMP_NUM_THREADS=1

./bin/CKAB_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 15000 5000 10 2
./bin/CKAB_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 15000 5000 10 2
./bin/CKAB_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 15000 5000 10 2
./bin/CKAB_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 15000 5000 10 2
./bin/CKAB_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 15000 5000 10 2
./bin/CKAB_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 15000 5000 10 2
./bin/CKAB_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 15000 5000 10 2

./bin/RKAB_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 15000 5000 10 2
./bin/RKAB_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 15000 5000 10 2
./bin/RKAB_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 15000 5000 10 2
./bin/RKAB_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 15000 5000 10 2
./bin/RKAB_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 15000 5000 10 2
./bin/RKAB_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 15000 5000 10 2
./bin/RKAB_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 15000 5000 10 2

./bin/SRKABWOR_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 15000 5000 10 2
./bin/SRKABWOR_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 15000 5000 10 2
./bin/SRKABWOR_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 15000 5000 10 2
./bin/SRKABWOR_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 15000 5000 10 2
./bin/SRKABWOR_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 15000 5000 10 2
./bin/SRKABWOR_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 15000 5000 10 2
./bin/SRKABWOR_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 15000 5000 10 2

./bin/CKAB_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 15000 1000 10 2
./bin/CKAB_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 15000 1000 10 2
./bin/CKAB_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 15000 1000 10 2
./bin/CKAB_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 15000 1000 10 2
./bin/CKAB_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 15000 1000 10 2
./bin/CKAB_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 15000 1000 10 2
./bin/CKAB_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 15000 1000 10 2

./bin/RKAB_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 15000 1000 10 2
./bin/RKAB_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 15000 1000 10 2
./bin/RKAB_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 15000 1000 10 2
./bin/RKAB_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 15000 1000 10 2
./bin/RKAB_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 15000 1000 10 2
./bin/RKAB_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 15000 1000 10 2
./bin/RKAB_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 15000 1000 10 2

./bin/SRKABWOR_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 15000 1000 10 2
./bin/SRKABWOR_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 15000 1000 10 2
./bin/SRKABWOR_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 15000 1000 10 2
./bin/SRKABWOR_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 15000 1000 10 2
./bin/SRKABWOR_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 15000 1000 10 2
./bin/SRKABWOR_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 15000 1000 10 2
./bin/SRKABWOR_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 15000 1000 10 2