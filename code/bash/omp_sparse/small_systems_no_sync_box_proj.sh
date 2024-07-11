#!/bin/bash

# bash bash/omp_sparse/small_systems_no_sync_box_proj.sh &

n=16384
m=19558
T=(1 2 4 8 16 32 64)

echo "--- Remove Old Files ---"

rm outputs/omp_sparse/ct_gaussian/small_systems_no_sync_box_proj.txt

echo "--- CT GAUSSIAN ---"

I=(2310001 1900001 2020001 2010001 1890001 1830001 2270001)

for (( i=0; i<7; i++ )) do
	t=${T[i]}
	it=${I[i]}
	export OMP_NUM_THREADS=$t
	./bin/CKA_box_proj_csr_parallel_max_it_critical.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_box_proj.txt
	./bin/CKA_box_proj_csr_parallel_max_it_critical_no_barrier.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_box_proj.txt
	./bin/CKA_box_proj_csr_parallel_max_it_critical_no_for.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_box_proj.txt
	./bin/CKA_box_proj_csr_parallel_max_it_just_critical.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_box_proj.txt
	./bin/CKA_box_proj_csr_parallel_max_it_atomic.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_box_proj.txt
	./bin/CKA_box_proj_csr_parallel_max_it_atomic_no_barrier.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_box_proj.txt
	./bin/CKA_box_proj_csr_parallel_max_it_atomic_no_for.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_box_proj.txt
	./bin/CKA_box_proj_csr_parallel_max_it_just_atomic.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_box_proj.txt
	./bin/CKA_box_proj_csr_parallel_max_it_no_sync.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_box_proj.txt
done

I=(2210001 2210001 1980001 2040001 2020001 2020001 2020001)

for (( i=0; i<7; i++ )) do
	t=${T[i]}
	it=${I[i]}
	export OMP_NUM_THREADS=$t
	./bin/RKA_box_proj_csr_parallel_max_it_critical.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_box_proj.txt
	./bin/RKA_box_proj_csr_parallel_max_it_critical_no_barrier.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_box_proj.txt
	./bin/RKA_box_proj_csr_parallel_max_it_critical_no_for.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_box_proj.txt
	./bin/RKA_box_proj_csr_parallel_max_it_just_critical.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_box_proj.txt
	./bin/RKA_box_proj_csr_parallel_max_it_atomic.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_box_proj.txt
	./bin/RKA_box_proj_csr_parallel_max_it_atomic_no_barrier.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_box_proj.txt
	./bin/RKA_box_proj_csr_parallel_max_it_atomic_no_for.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_box_proj.txt
	./bin/RKA_box_proj_csr_parallel_max_it_just_atomic.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_box_proj.txt
	./bin/RKA_box_proj_csr_parallel_max_it_no_sync.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_box_proj.txt
done

I=(1640001 1860001 1380001 2460001 1950001 1970001 2050001)

for (( i=0; i<7; i++ )) do
	t=${T[i]}
	it=${I[i]}
	export OMP_NUM_THREADS=$t
	./bin/SRKAWOR_box_proj_csr_parallel_max_it_critical.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_box_proj.txt
	./bin/SRKAWOR_box_proj_csr_parallel_max_it_critical_no_barrier.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_box_proj.txt
	./bin/SRKAWOR_box_proj_csr_parallel_max_it_critical_no_for.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_box_proj.txt
	./bin/SRKAWOR_box_proj_csr_parallel_max_it_just_critical.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_box_proj.txt
	./bin/SRKAWOR_box_proj_csr_parallel_max_it_atomic.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_box_proj.txt
	./bin/SRKAWOR_box_proj_csr_parallel_max_it_atomic_no_barrier.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_box_proj.txt
	./bin/SRKAWOR_box_proj_csr_parallel_max_it_atomic_no_for.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_box_proj.txt
	./bin/SRKAWOR_box_proj_csr_parallel_max_it_just_atomic.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_box_proj.txt
	./bin/SRKAWOR_box_proj_csr_parallel_max_it_no_sync.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_no_sync_box_proj.txt
done