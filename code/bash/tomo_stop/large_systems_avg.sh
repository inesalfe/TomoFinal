#!/bin/bash

# bash bash/tomo_stop/large_systems_avg.sh &

rm outputs/tomo_stop/ct_gaussian/large_systems_avg.txt

T=(2 4 8 16 32 64)

for t in ${T[@]}; do
	export OMP_NUM_THREADS=$t
	./bin/CK_box_proj_parallel_stop_final_15.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/CK_box_proj_parallel_stop_final_16.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/CK_box_proj_parallel_stop_final_20.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/CK_box_proj_parallel_stop_final_22.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/CK_box_proj_parallel_stop_final_23.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
done

for t in ${T[@]}; do
	export OMP_NUM_THREADS=$t
	./bin/SRKWOR_box_proj_parallel_stop_final_15.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_16.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_20.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_22.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_23.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
done

for t in ${T[@]}; do
	export OMP_NUM_THREADS=$t
	./bin/CK_box_proj_parallel_stop_final_15.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/CK_box_proj_parallel_stop_final_16.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/CK_box_proj_parallel_stop_final_20.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/CK_box_proj_parallel_stop_final_22.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/CK_box_proj_parallel_stop_final_23.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
done

for t in ${T[@]}; do
	export OMP_NUM_THREADS=$t
	./bin/SRKWOR_box_proj_parallel_stop_final_15.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_16.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_20.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_22.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_23.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
done

for t in ${T[@]}; do
	export OMP_NUM_THREADS=$t
	./bin/CK_box_proj_parallel_stop_final_15.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/CK_box_proj_parallel_stop_final_16.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/CK_box_proj_parallel_stop_final_20.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/CK_box_proj_parallel_stop_final_22.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/CK_box_proj_parallel_stop_final_23.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
done

for t in ${T[@]}; do
	export OMP_NUM_THREADS=$t
	./bin/SRKWOR_box_proj_parallel_stop_final_15.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_16.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_20.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_22.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_23.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
done

for t in ${T[@]}; do
	export OMP_NUM_THREADS=$t
	./bin/CK_box_proj_parallel_stop_final_15.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/CK_box_proj_parallel_stop_final_16.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/CK_box_proj_parallel_stop_final_20.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/CK_box_proj_parallel_stop_final_22.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/CK_box_proj_parallel_stop_final_23.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
done

for t in ${T[@]}; do
	export OMP_NUM_THREADS=$t
	./bin/SRKWOR_box_proj_parallel_stop_final_15.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_16.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_20.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_22.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_23.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_avg.txt
done