#!/bin/bash

# bash bash/tomo_stop/large_systems_twin_data_seq.sh

rm outputs/tomo_stop/ct_gaussian/large_systems_twin_data_seq.txt

export OMP_NUM_THREADS=1
./bin/CK_box_proj_stop.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_twin_data_seq.txt
./bin/CK_box_proj_stop_2.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_twin_data_seq.txt
./bin/RK_box_proj_stop.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_twin_data_seq.txt
./bin/RK_box_proj_stop_2.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_twin_data_seq.txt
./bin/SRKWOR_box_proj_stop.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_twin_data_seq.txt
./bin/SRKWOR_box_proj_stop_2.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_twin_data_seq.txt

./bin/CK_box_proj_stop.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_twin_data_seq.txt
./bin/CK_box_proj_stop_2.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_twin_data_seq.txt
./bin/RK_box_proj_stop.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_twin_data_seq.txt
./bin/RK_box_proj_stop_2.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_twin_data_seq.txt
./bin/SRKWOR_box_proj_stop.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_twin_data_seq.txt
./bin/SRKWOR_box_proj_stop_2.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_twin_data_seq.txt

./bin/CK_box_proj_stop.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_twin_data_seq.txt
./bin/CK_box_proj_stop_2.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_twin_data_seq.txt
./bin/RK_box_proj_stop.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_twin_data_seq.txt
./bin/RK_box_proj_stop_2.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_twin_data_seq.txt
./bin/SRKWOR_box_proj_stop.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_twin_data_seq.txt
./bin/SRKWOR_box_proj_stop_2.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_twin_data_seq.txt

./bin/CK_box_proj_stop.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_twin_data_seq.txt
./bin/CK_box_proj_stop_2.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_twin_data_seq.txt
./bin/RK_box_proj_stop.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_twin_data_seq.txt
./bin/RK_box_proj_stop_2.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_twin_data_seq.txt
./bin/SRKWOR_box_proj_stop.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_twin_data_seq.txt
./bin/SRKWOR_box_proj_stop_2.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/tomo_stop/ct_gaussian/large_systems_twin_data_seq.txt