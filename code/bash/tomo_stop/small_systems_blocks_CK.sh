#!/bin/bash

# bash bash/tomo_stop/small_systems_blocks_CK.sh &

rm outputs/tomo_stop/ct_gaussian/small_systems_blocks_CK.txt

T=(2 4 8 16 32 64)
B=(2 4 8)

for t in ${T[@]}; do
	for b in ${B[@]}; do
		export OMP_NUM_THREADS=$t
		./bin/CKB_box_proj_parallel_stop_final_1.exe ct_gaussian 10 19558 16384 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_blocks_CK.txt
		./bin/CKB_box_proj_parallel_stop_final_2.exe ct_gaussian 10 19558 16384 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_blocks_CK.txt
		./bin/CKB_box_proj_parallel_stop_final_3.exe ct_gaussian 10 19558 16384 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_blocks_CK.txt
		./bin/CKB_box_proj_parallel_stop_final_4.exe ct_gaussian 10 19558 16384 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_blocks_CK.txt
		./bin/CKB_box_proj_parallel_stop_final_5.exe ct_gaussian 10 19558 16384 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_blocks_CK.txt
		./bin/CKB_box_proj_parallel_stop_final_6.exe ct_gaussian 10 19558 16384 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_blocks_CK.txt
		./bin/CKB_box_proj_parallel_stop_final_7.exe ct_gaussian 10 19558 16384 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_blocks_CK.txt
		./bin/CKB_box_proj_parallel_stop_final_8.exe ct_gaussian 10 19558 16384 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_blocks_CK.txt
		./bin/CKB_box_proj_parallel_stop_final_9.exe ct_gaussian 10 19558 16384 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_blocks_CK.txt
		./bin/CKB_box_proj_parallel_stop_final_10.exe ct_gaussian 10 19558 16384 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_blocks_CK.txt
		./bin/CKB_box_proj_parallel_stop_final_11.exe ct_gaussian 10 19558 16384 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_blocks_CK.txt
		./bin/CKB_box_proj_parallel_stop_final_12.exe ct_gaussian 10 19558 16384 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_blocks_CK.txt
		./bin/CKB_box_proj_parallel_stop_final_13.exe ct_gaussian 10 19558 16384 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_blocks_CK.txt
		./bin/CKB_box_proj_parallel_stop_final_14.exe ct_gaussian 10 19558 16384 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_blocks_CK.txt
		./bin/CKB_box_proj_parallel_stop_final_15.exe ct_gaussian 10 19558 16384 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_blocks_CK.txt
		./bin/CKB_box_proj_parallel_stop_final_16.exe ct_gaussian 10 19558 16384 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_blocks_CK.txt
		./bin/CKB_box_proj_parallel_stop_final_17.exe ct_gaussian 10 19558 16384 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_blocks_CK.txt
		./bin/CKB_box_proj_parallel_stop_final_18.exe ct_gaussian 10 19558 16384 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_blocks_CK.txt
		./bin/CKB_box_proj_parallel_stop_final_19.exe ct_gaussian 10 19558 16384 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_blocks_CK.txt
		./bin/CKB_box_proj_parallel_stop_final_20.exe ct_gaussian 10 19558 16384 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_blocks_CK.txt
		./bin/CKB_box_proj_parallel_stop_final_21.exe ct_gaussian 10 19558 16384 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_blocks_CK.txt
		./bin/CKB_box_proj_parallel_stop_final_22.exe ct_gaussian 10 19558 16384 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_blocks_CK.txt
		./bin/CKB_box_proj_parallel_stop_final_23.exe ct_gaussian 10 19558 16384 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_blocks_CK.txt
		./bin/CKB_box_proj_parallel_stop_final_24.exe ct_gaussian 10 19558 16384 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_blocks_CK.txt
		./bin/CKB_box_proj_parallel_stop_final_25.exe ct_gaussian 10 19558 16384 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_blocks_CK.txt
		./bin/CKB_box_proj_parallel_stop_final_26.exe ct_gaussian 10 19558 16384 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_blocks_CK.txt
		./bin/CKB_box_proj_parallel_stop_final_27.exe ct_gaussian 10 19558 16384 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_blocks_CK.txt
		./bin/CKB_box_proj_parallel_stop_final_28.exe ct_gaussian 10 19558 16384 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_blocks_CK.txt
		./bin/CKB_box_proj_parallel_stop_final_29.exe ct_gaussian 10 19558 16384 $b 7 7 2 >> outputs/tomo_stop/ct_gaussian/small_systems_blocks_CK.txt
	done
done