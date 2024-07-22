#!/bin/bash

# bash bash/tomo_stop/small_systems_twin_data.sh

./bin/SRKWOR_twin_max_it_data.exe ct_gaussian 10 19558 16384 30000000 1 2
./bin/SRKWOR_twin_box_proj_max_it_data.exe ct_gaussian 10 19558 16384 10000000 1 2
./bin/RK_twin_max_it_data.exe ct_gaussian 10 19558 16384 30000000 1 2
./bin/RK_twin_box_proj_max_it_data.exe ct_gaussian 10 19558 16384 10000000 1 2
./bin/CK_twin_max_it_data.exe ct_gaussian 10 19558 16384 30000000 1 2
./bin/CK_twin_box_proj_max_it_data.exe ct_gaussian 10 19558 16384 10000000 1 2
