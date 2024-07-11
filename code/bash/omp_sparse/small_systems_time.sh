#!/bin/bash

# bash bash/omp_sparse/small_systems_time.sh &

rm outputs/omp_sparse/ct_gaussian/small_systems_time.txt

./bin/CKA_csr_max_it.exe ct_gaussian 10 19558 16384 1 2440001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=1
./bin/CKA_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 2440001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/CKA_csr_max_it.exe ct_gaussian 10 19558 16384 2 3820001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=2
./bin/CKA_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 3820001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/CKA_csr_max_it.exe ct_gaussian 10 19558 16384 4 5040001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=4
./bin/CKA_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 5040001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/CKA_csr_max_it.exe ct_gaussian 10 19558 16384 8 5660001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=8
./bin/CKA_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 5660001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/CKA_csr_max_it.exe ct_gaussian 10 19558 16384 16 5650001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=16
./bin/CKA_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 5650001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/CKA_csr_max_it.exe ct_gaussian 10 19558 16384 32 5950001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=32
./bin/CKA_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 5950001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/CKA_csr_max_it.exe ct_gaussian 10 19558 16384 64 5630001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=64
./bin/CKA_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 5630001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt

./bin/CKA_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 1 3600001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=1
./bin/CKA_pos_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 3600001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/CKA_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 2 3150001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=2
./bin/CKA_pos_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 3150001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/CKA_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 4 3340001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=4
./bin/CKA_pos_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 3340001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/CKA_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 8 3780001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=8
./bin/CKA_pos_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 3780001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/CKA_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 16 3660001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=16
./bin/CKA_pos_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 3660001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/CKA_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 32 3240001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=32
./bin/CKA_pos_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 3240001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/CKA_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 64 3390001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=64
./bin/CKA_pos_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 3390001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt

./bin/CKA_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 1 2310001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=1
./bin/CKA_box_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 2310001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/CKA_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 2 1900001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=2
./bin/CKA_box_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 1900001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/CKA_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 4 2020001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=4
./bin/CKA_box_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 2020001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/CKA_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 8 2010001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=8
./bin/CKA_box_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 2010001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/CKA_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 16 1890001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=16
./bin/CKA_box_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 1890001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/CKA_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 32 1830001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=32
./bin/CKA_box_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 1830001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/CKA_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 64 2270001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=64
./bin/CKA_box_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 2270001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt

./bin/RKA_csr_max_it.exe ct_gaussian 10 19558 16384 1 7750001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=1
./bin/RKA_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 7750001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/RKA_csr_max_it.exe ct_gaussian 10 19558 16384 2 7930001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=2
./bin/RKA_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 7930001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/RKA_csr_max_it.exe ct_gaussian 10 19558 16384 4 7860001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=4
./bin/RKA_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 7860001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/RKA_csr_max_it.exe ct_gaussian 10 19558 16384 8 7740001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=8
./bin/RKA_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 7740001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/RKA_csr_max_it.exe ct_gaussian 10 19558 16384 16 7740001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=16
./bin/RKA_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 7740001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/RKA_csr_max_it.exe ct_gaussian 10 19558 16384 32 7830001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=32
./bin/RKA_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 7830001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/RKA_csr_max_it.exe ct_gaussian 10 19558 16384 64 7740001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=64
./bin/RKA_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 7740001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt

./bin/RKA_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 1 3090001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=1
./bin/RKA_pos_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 3090001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/RKA_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 2 3130001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=2
./bin/RKA_pos_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 3130001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/RKA_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 4 3160001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=4
./bin/RKA_pos_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 3160001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/RKA_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 8 3160001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=8
./bin/RKA_pos_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 3160001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/RKA_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 16 3160001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=16
./bin/RKA_pos_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 3160001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/RKA_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 32 3200001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=32
./bin/RKA_pos_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 3200001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/RKA_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 64 3200001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=64
./bin/RKA_pos_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 3200001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt

./bin/RKA_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 1 2210001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=1
./bin/RKA_box_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 2210001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/RKA_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 2 2210001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=2
./bin/RKA_box_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 2210001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/RKA_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 4 1980001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=4
./bin/RKA_box_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 1980001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/RKA_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 8 2040001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=8
./bin/RKA_box_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 2040001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/RKA_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 16 2020001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=16
./bin/RKA_box_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 2020001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/RKA_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 32 2020001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=32
./bin/RKA_box_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 2020001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/RKA_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 64 2020001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=64
./bin/RKA_box_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 2020001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt

./bin/SRKAWOR_csr_max_it.exe ct_gaussian 10 19558 16384 1 1050001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=1
./bin/SRKAWOR_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 1050001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/SRKAWOR_csr_max_it.exe ct_gaussian 10 19558 16384 2 2920001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=2
./bin/SRKAWOR_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 2920001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/SRKAWOR_csr_max_it.exe ct_gaussian 10 19558 16384 4 4130001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=4
./bin/SRKAWOR_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 4130001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/SRKAWOR_csr_max_it.exe ct_gaussian 10 19558 16384 8 4830001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=8
./bin/SRKAWOR_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 4830001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/SRKAWOR_csr_max_it.exe ct_gaussian 10 19558 16384 16 5680001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=16
./bin/SRKAWOR_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 5680001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/SRKAWOR_csr_max_it.exe ct_gaussian 10 19558 16384 32 5550001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=32
./bin/SRKAWOR_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 5550001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/SRKAWOR_csr_max_it.exe ct_gaussian 10 19558 16384 64 5900001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=64
./bin/SRKAWOR_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 5900001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt

./bin/SRKAWOR_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 1 1500001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=1
./bin/SRKAWOR_pos_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 1500001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/SRKAWOR_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 2 1860001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=2
./bin/SRKAWOR_pos_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 1860001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/SRKAWOR_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 4 3150001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=4
./bin/SRKAWOR_pos_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 3150001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/SRKAWOR_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 8 2460001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=8
./bin/SRKAWOR_pos_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 2460001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/SRKAWOR_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 16 3110001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=16
./bin/SRKAWOR_pos_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 3110001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/SRKAWOR_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 32 3270001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=32
./bin/SRKAWOR_pos_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 3270001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/SRKAWOR_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 64 2990001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=64
./bin/SRKAWOR_pos_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 2990001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt

./bin/SRKAWOR_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 1 1640001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=1
./bin/SRKAWOR_box_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 1640001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/SRKAWOR_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 2 1860001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=2
./bin/SRKAWOR_box_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 1860001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/SRKAWOR_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 4 1380001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=4
./bin/SRKAWOR_box_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 1380001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/SRKAWOR_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 8 2460001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=8
./bin/SRKAWOR_box_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 2460001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/SRKAWOR_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 16 1950001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=16
./bin/SRKAWOR_box_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 1950001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/SRKAWOR_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 32 1970001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=32
./bin/SRKAWOR_box_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 1970001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
./bin/SRKAWOR_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 64 2050001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt
export OMP_NUM_THREADS=64
./bin/SRKAWOR_box_proj_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 2050001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_time.txt