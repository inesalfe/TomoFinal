#!/bin/bash

# bash bash/seq_sparse/small_systems_save_sol.sh > outputs/progress/small_systems_save_sol.txt &

export OMP_NUM_THREADS=1

./bin/RK_csr_max_it_sol.exe ct_gaussian 10 19558 16384 7750001 2
./bin/CK_csr_max_it_sol.exe ct_gaussian 10 19558 16384 2440001 2
./bin/SRKWOR_csr_max_it_sol.exe ct_gaussian 10 19558 16384 1050001 2
./bin/RK_pos_proj_csr_max_it_sol.exe ct_gaussian 10 19558 16384 3090001 2
./bin/CK_pos_proj_csr_max_it_sol.exe ct_gaussian 10 19558 16384 3600001 2
./bin/SRKWOR_pos_proj_csr_max_it_sol.exe ct_gaussian 10 19558 16384 1500001 2
./bin/RK_box_proj_csr_max_it_sol.exe ct_gaussian 10 19558 16384 2210001 2
./bin/CK_box_proj_csr_max_it_sol.exe ct_gaussian 10 19558 16384 2310001 2
./bin/SRKWOR_box_proj_csr_max_it_sol.exe ct_gaussian 10 19558 16384 1640001 2