#!/bin/bash

# bash bash/seq_sparse/small_systems_time.sh &

rm outputs/seq_sparse/small_systems_time.txt

./bin/RK_csr_max_it.exe ct_gaussian 10 19558 16384 7750001 2 >> outputs/seq_sparse/small_systems_time.txt
./bin/CK_csr_max_it.exe ct_gaussian 10 19558 16384 2440001 2 >> outputs/seq_sparse/small_systems_time.txt
./bin/SRKWOR_csr_max_it.exe ct_gaussian 10 19558 16384 1050001 2 >> outputs/seq_sparse/small_systems_time.txt
./bin/RK_pos_ineq_csr_max_it.exe ct_gaussian 10 19558 16384 12690001 2 >> outputs/seq_sparse/small_systems_time.txt
./bin/CK_pos_ineq_csr_max_it.exe ct_gaussian 10 19558 16384 5140001 2 >> outputs/seq_sparse/small_systems_time.txt
./bin/SRKWOR_pos_ineq_csr_max_it.exe ct_gaussian 10 19558 16384 2230001 2 >> outputs/seq_sparse/small_systems_time.txt
./bin/RK_box_ineq_csr_max_it.exe ct_gaussian 10 19558 16384 13040001 2 >> outputs/seq_sparse/small_systems_time.txt
./bin/CK_box_ineq_csr_max_it.exe ct_gaussian 10 19558 16384 5600001 2 >> outputs/seq_sparse/small_systems_time.txt
./bin/SRKWOR_box_ineq_csr_max_it.exe ct_gaussian 10 19558 16384 2720001 2 >> outputs/seq_sparse/small_systems_time.txt
./bin/RK_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 3090001 2 >> outputs/seq_sparse/small_systems_time.txt
./bin/CK_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 3600001 2 >> outputs/seq_sparse/small_systems_time.txt
./bin/SRKWOR_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 1500001 2 >> outputs/seq_sparse/small_systems_time.txt
./bin/RK_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 2210001 2 >> outputs/seq_sparse/small_systems_time.txt
./bin/CK_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 2310001 2 >> outputs/seq_sparse/small_systems_time.txt
./bin/SRKWOR_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 1640001 2 >> outputs/seq_sparse/small_systems_time.txt