#!/bin/bash

# bash bash/omp_sparse/small_systems_no_sync_sol.sh > outputs/progress/small_systems_no_sync_sol.txt &

n=16384
m=19558

echo "--- Remove Old Files ---"

rm outputs/omp_sparse/ct_gaussian/small_systems_no_sync_sol.txt

echo "--- CT GAUSSIAN ---"

echo "--- 10 RUNS ---"

t=2
export OMP_NUM_THREADS=$t
./bin/CKA_csr_parallel_max_it_atomic.exe ct_gaussian 10 $m $n 3820001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_sol.txt
./bin/CKA_csr_parallel_max_it_no_sync.exe ct_gaussian 10 $m $n 4700000 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_sol.txt

echo "CKA 10 RUN 2 Threads"

t=4
export OMP_NUM_THREADS=$t
./bin/CKA_csr_parallel_max_it_atomic.exe ct_gaussian 10 $m $n 5040001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_sol.txt
./bin/CKA_csr_parallel_max_it_no_sync.exe ct_gaussian 10 $m $n 5600000 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_sol.txt

echo "CKA 10 RUN 4 Threads"

t=2
export OMP_NUM_THREADS=$t
./bin/CKA_csr_parallel_max_it_dist_atomic.exe ct_gaussian 10 $m $n 3680001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_sol.txt
./bin/CKA_csr_parallel_max_it_dist_no_sync.exe ct_gaussian 10 $m $n 4550000 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_sol.txt

echo "CKA Dist 10 RUN 2 Threads"

t=4
export OMP_NUM_THREADS=$t
./bin/CKA_csr_parallel_max_it_dist_atomic.exe ct_gaussian 10 $m $n 5580001 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_sol.txt
./bin/CKA_csr_parallel_max_it_dist_no_sync.exe ct_gaussian 10 $m $n 4650000 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_sol.txt

echo "CKA Dist 10 RUN 4 Threads"