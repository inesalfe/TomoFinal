#!/bin/bash

# bash bash/tomo_stop/large_systems_blocks_SRKWOR.sh &

rm outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt

T=(2 4 8 16 32 64)
B=(2 4 8)

for t in ${T[@]}; do
	for b in ${B[@]}; do
		export OMP_NUM_THREADS=$t
		./bin/SRKBWOR_box_proj_parallel_stop_final_2.exe ct_gaussian 3 117372 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
		./bin/SRKBWOR_box_proj_parallel_stop_final_4.exe ct_gaussian 3 117372 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
# 		./bin/SRKBWOR_box_proj_parallel_stop_final_5.exe ct_gaussian 3 117372 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
		./bin/SRKBWOR_box_proj_parallel_stop_final_11.exe ct_gaussian 3 117372 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
		./bin/SRKBWOR_box_proj_parallel_stop_final_12.exe ct_gaussian 3 117372 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
# 		./bin/SRKBWOR_box_proj_parallel_stop_final_14.exe ct_gaussian 3 117372 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
		./bin/SRKBWOR_box_proj_parallel_stop_final_15.exe ct_gaussian 3 117372 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
# 		./bin/SRKBWOR_box_proj_parallel_stop_final_21.exe ct_gaussian 3 117372 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
		./bin/SRKBWOR_box_proj_parallel_stop_final_24.exe ct_gaussian 3 117372 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
# 		./bin/SRKBWOR_box_proj_parallel_stop_final_25.exe ct_gaussian 3 117372 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
	done
done

for t in ${T[@]}; do
	for b in ${B[@]}; do
		export OMP_NUM_THREADS=$t
		./bin/SRKBWOR_box_proj_parallel_stop_final_2.exe ct_gaussian 3 234664 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
		./bin/SRKBWOR_box_proj_parallel_stop_final_4.exe ct_gaussian 3 234664 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
# 		./bin/SRKBWOR_box_proj_parallel_stop_final_5.exe ct_gaussian 3 234664 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
		./bin/SRKBWOR_box_proj_parallel_stop_final_11.exe ct_gaussian 3 234664 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
		./bin/SRKBWOR_box_proj_parallel_stop_final_12.exe ct_gaussian 3 234664 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
# 		./bin/SRKBWOR_box_proj_parallel_stop_final_14.exe ct_gaussian 3 234664 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
		./bin/SRKBWOR_box_proj_parallel_stop_final_15.exe ct_gaussian 3 234664 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
# 		./bin/SRKBWOR_box_proj_parallel_stop_final_21.exe ct_gaussian 3 234664 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
		./bin/SRKBWOR_box_proj_parallel_stop_final_24.exe ct_gaussian 3 234664 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
# 		./bin/SRKBWOR_box_proj_parallel_stop_final_25.exe ct_gaussian 3 234664 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
	done
done

for t in ${T[@]}; do
	for b in ${B[@]}; do
		export OMP_NUM_THREADS=$t
		./bin/SRKBWOR_box_proj_parallel_stop_final_2.exe ct_gaussian 3 469368 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
		./bin/SRKBWOR_box_proj_parallel_stop_final_4.exe ct_gaussian 3 469368 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
# 		./bin/SRKBWOR_box_proj_parallel_stop_final_5.exe ct_gaussian 3 469368 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
		./bin/SRKBWOR_box_proj_parallel_stop_final_11.exe ct_gaussian 3 469368 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
		./bin/SRKBWOR_box_proj_parallel_stop_final_12.exe ct_gaussian 3 469368 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
# 		./bin/SRKBWOR_box_proj_parallel_stop_final_14.exe ct_gaussian 3 469368 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
		./bin/SRKBWOR_box_proj_parallel_stop_final_15.exe ct_gaussian 3 469368 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
# 		./bin/SRKBWOR_box_proj_parallel_stop_final_21.exe ct_gaussian 3 469368 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
		./bin/SRKBWOR_box_proj_parallel_stop_final_24.exe ct_gaussian 3 469368 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
# 		./bin/SRKBWOR_box_proj_parallel_stop_final_25.exe ct_gaussian 3 469368 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
	done
done

for t in ${T[@]}; do
	for b in ${B[@]}; do
		export OMP_NUM_THREADS=$t
		./bin/SRKBWOR_box_proj_parallel_stop_final_2.exe ct_gaussian 3 938720 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
		./bin/SRKBWOR_box_proj_parallel_stop_final_4.exe ct_gaussian 3 938720 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
# 		./bin/SRKBWOR_box_proj_parallel_stop_final_5.exe ct_gaussian 3 938720 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
		./bin/SRKBWOR_box_proj_parallel_stop_final_11.exe ct_gaussian 3 938720 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
		./bin/SRKBWOR_box_proj_parallel_stop_final_12.exe ct_gaussian 3 938720 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
# 		./bin/SRKBWOR_box_proj_parallel_stop_final_14.exe ct_gaussian 3 938720 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
		./bin/SRKBWOR_box_proj_parallel_stop_final_15.exe ct_gaussian 3 938720 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
# 		./bin/SRKBWOR_box_proj_parallel_stop_final_21.exe ct_gaussian 3 938720 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
		./bin/SRKBWOR_box_proj_parallel_stop_final_24.exe ct_gaussian 3 938720 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
# 		./bin/SRKBWOR_box_proj_parallel_stop_final_25.exe ct_gaussian 3 938720 262144 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_blocks_SRKWOR.txt
	done
done