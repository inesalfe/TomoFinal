#!/bin/bash

# bash bash/tomo_stop/small_systems_avg_SRKWOR.sh &

rm outputs/tomo_stop/ct_gaussian/small_systems_avg_SRKWOR.txt

T=(2 4 8 16 32 64)

for t in ${T[@]}; do
	export OMP_NUM_THREADS=$t
	./bin/SRKWOR_box_proj_parallel_stop_final_15.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_avg_SRKWOR.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_16.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_avg_SRKWOR.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_20.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_avg_SRKWOR.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_22.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_avg_SRKWOR.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_23.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_avg_SRKWOR.txt
done