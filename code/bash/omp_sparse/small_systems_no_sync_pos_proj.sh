#!/bin/bash

# bash bash/omp_sparse/small_systems_no_sync_pos_proj.sh &

n=16384
m=19558
T=(1 2 4 8 16 32 64)

echo "--- Remove Old Files ---"

rm outputs/omp_sparse/ct_gaussian/small_systems_no_sync_pos_proj.txt

echo "--- CT GAUSSIAN ---"

I=(3600001 3150001 3340001 3780001 3660001 3240001 3390001)

for (( i=0; i<7; i++ )) do
	t=${T[i]}
	it=${I[i]}
	export OMP_NUM_THREADS=$t
	./bin/CKA_pos_proj_csr_parallel_max_it_critical.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_pos_proj.txt
	./bin/CKA_pos_proj_csr_parallel_max_it_critical_no_barrier.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_pos_proj.txt
	./bin/CKA_pos_proj_csr_parallel_max_it_critical_no_for.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_pos_proj.txt
	./bin/CKA_pos_proj_csr_parallel_max_it_just_critical.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_pos_proj.txt
	./bin/CKA_pos_proj_csr_parallel_max_it_atomic.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_pos_proj.txt
	./bin/CKA_pos_proj_csr_parallel_max_it_atomic_no_barrier.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_pos_proj.txt
	./bin/CKA_pos_proj_csr_parallel_max_it_atomic_no_for.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_pos_proj.txt
	./bin/CKA_pos_proj_csr_parallel_max_it_just_atomic.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_pos_proj.txt
	./bin/CKA_pos_proj_csr_parallel_max_it_no_sync.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_pos_proj.txt
done

I=(3090001 3130001 3160001 3160001 3160001 3200001 3200001)

for (( i=0; i<7; i++ )) do
	t=${T[i]}
	it=${I[i]}
	export OMP_NUM_THREADS=$t
	./bin/RKA_pos_proj_csr_parallel_max_it_critical.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_pos_proj.txt
	./bin/RKA_pos_proj_csr_parallel_max_it_critical_no_barrier.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_pos_proj.txt
	./bin/RKA_pos_proj_csr_parallel_max_it_critical_no_for.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_pos_proj.txt
	./bin/RKA_pos_proj_csr_parallel_max_it_just_critical.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_pos_proj.txt
	./bin/RKA_pos_proj_csr_parallel_max_it_atomic.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_pos_proj.txt
	./bin/RKA_pos_proj_csr_parallel_max_it_atomic_no_barrier.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_pos_proj.txt
	./bin/RKA_pos_proj_csr_parallel_max_it_atomic_no_for.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_pos_proj.txt
	./bin/RKA_pos_proj_csr_parallel_max_it_just_atomic.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_pos_proj.txt
	./bin/RKA_pos_proj_csr_parallel_max_it_no_sync.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_pos_proj.txt
done

I=(1500001 1860001 3150001 2460001 3110001 3270001 2990001)

for (( i=0; i<7; i++ )) do
	t=${T[i]}
	it=${I[i]}
	export OMP_NUM_THREADS=$t
	./bin/SRKAWOR_pos_proj_csr_parallel_max_it_critical.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_pos_proj.txt
	./bin/SRKAWOR_pos_proj_csr_parallel_max_it_critical_no_barrier.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_pos_proj.txt
	./bin/SRKAWOR_pos_proj_csr_parallel_max_it_critical_no_for.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_pos_proj.txt
	./bin/SRKAWOR_pos_proj_csr_parallel_max_it_just_critical.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_pos_proj.txt
	./bin/SRKAWOR_pos_proj_csr_parallel_max_it_atomic.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_pos_proj.txt
	./bin/SRKAWOR_pos_proj_csr_parallel_max_it_atomic_no_barrier.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_pos_proj.txt
	./bin/SRKAWOR_pos_proj_csr_parallel_max_it_atomic_no_for.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_pos_proj.txt
	./bin/SRKAWOR_pos_proj_csr_parallel_max_it_just_atomic.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_pos_proj.txt
	./bin/SRKAWOR_pos_proj_csr_parallel_max_it_no_sync.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_pos_proj.txt
done