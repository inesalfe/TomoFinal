#!/bin/bash

# bash bash/omp_sparse/small_systems_conflicts.sh &

n=16384
m=19558
T=(1 2 4 8 16 32 64)

export OMP_NUM_THREADS=1

echo "--- Remove Old Files ---"

rm outputs/omp_sparse/ct_gaussian/small_systems_conflicts.txt

echo "--- CT GAUSSIAN ---"

I=(2440001 3820001 5040001 5660001 5650001 5950001 5630001)

for (( i=0; i<7; i++ )) do
	t=${T[i]}
	it=${I[i]}
	./bin/CKA_csr_max_it_conflict.exe ct_gaussian 10 $m $n $t $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_conflicts.txt &
done

I=(2440001 3680001 5580001 5810001 5800001 5810001 5910001)

for (( i=0; i<7; i++ )) do
	t=${T[i]}
	it=${I[i]}
	./bin/CKA_csr_max_it_dist_conflict.exe ct_gaussian 10 $m $n $t $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_conflicts.txt &
done

I=(7750001 7930001 7860001 7740001 7740001 7830001 7740001)

for (( i=0; i<7; i++ )) do
	t=${T[i]}
	it=${I[i]}
	./bin/RKA_csr_max_it_conflict.exe ct_gaussian 10 $m $n $t $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_conflicts.txt &
done

I=(7750001 7740001 7790001 7870001 7780001 7730001 7750001)

for (( i=0; i<7; i++ )) do
	t=${T[i]}
	it=${I[i]}
	./bin/RKA_csr_max_it_dist_conflict.exe ct_gaussian 10 $m $n $t $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_conflicts.txt &
done

I=(1050001 2920001 4130001 4830001 5680001 5550001 5900001)

for (( i=0; i<7; i++ )) do
	t=${T[i]}
	it=${I[i]}
	./bin/SRKAWOR_csr_max_it_conflict.exe ct_gaussian 10 $m $n $t $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_conflicts.txt &
done

I=(1050001 2820001 4780001 5300001 5790001 5730001 5790001)

for (( i=0; i<7; i++ )) do
	t=${T[i]}
	it=${I[i]}
	./bin/SRKAWOR_csr_max_it_dist_conflict.exe ct_gaussian 10 $m $n $t $it 2 >> outputs/omp_sparse/ct_gaussian/small_systems_conflicts.txt &
done