#!/bin/bash

# bash bash/tomo_stop/small_systems_twin_data_avg.sh

./bin/CKA_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 30000000 1 2 &
./bin/CKA_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 30000000 1 2 &
./bin/CKA_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 30000000 1 2 &
./bin/CKA_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 30000000 1 2 &
./bin/CKA_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 30000000 1 2 &
./bin/CKA_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 30000000 1 2 &
./bin/CKA_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 30000000 1 2 &

./bin/CKA_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 10000000 1 2 &
./bin/CKA_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 10000000 1 2 &
./bin/CKA_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 10000000 1 2 &
./bin/CKA_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 10000000 1 2 &
./bin/CKA_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 10000000 1 2 &
./bin/CKA_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 10000000 1 2 &
./bin/CKA_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 10000000 1 2 &

./bin/SRKAWOR_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 30000000 1 2 &
./bin/SRKAWOR_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 30000000 1 2 &
./bin/SRKAWOR_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 30000000 1 2 &
./bin/SRKAWOR_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 30000000 1 2 &
./bin/SRKAWOR_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 30000000 1 2 &
./bin/SRKAWOR_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 30000000 1 2 &
./bin/SRKAWOR_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 30000000 1 2 &

./bin/SRKAWOR_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 10000000 1 2 &
./bin/SRKAWOR_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 10000000 1 2 &
./bin/SRKAWOR_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 10000000 1 2 &
./bin/SRKAWOR_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 10000000 1 2 &
./bin/SRKAWOR_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 10000000 1 2 &
./bin/SRKAWOR_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 10000000 1 2 &
./bin/SRKAWOR_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 10000000 1 2 &

## AVERAGING (com alpha)

./bin/CKA_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 0.5 30000000 1 2 &
./bin/CKA_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 1 30000000 1 2 &
./bin/CKA_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 1.5 30000000 1 2 &
./bin/CKA_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 2 30000000 1 2 &
./bin/CKA_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 2.5 30000000 1 2 &
./bin/CKA_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 3 30000000 1 2 &
./bin/CKA_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 3.5 30000000 1 2 &

./bin/CKA_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 0.5 10000000 1 2 &
./bin/CKA_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 1 10000000 1 2 &
./bin/CKA_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 1.5 10000000 1 2 &
./bin/CKA_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 2 10000000 1 2 &
./bin/CKA_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 2.5 10000000 1 2 &
./bin/CKA_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 3 10000000 1 2 &
./bin/CKA_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 3.5 10000000 1 2 &

./bin/SRKAWOR_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 0.5 30000000 1 2 &
./bin/SRKAWOR_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 1 30000000 1 2 &
./bin/SRKAWOR_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 1.5 30000000 1 2 &
./bin/SRKAWOR_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 2 30000000 1 2 &
./bin/SRKAWOR_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 2.5 30000000 1 2 &
./bin/SRKAWOR_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 3 30000000 1 2 &
./bin/SRKAWOR_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 3.5 30000000 1 2 &

./bin/SRKAWOR_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 0.5 10000000 1 2 &
./bin/SRKAWOR_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 1 10000000 1 2 &
./bin/SRKAWOR_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 1.5 10000000 1 2 &
./bin/SRKAWOR_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 2 10000000 1 2 &
./bin/SRKAWOR_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 2.5 10000000 1 2 &
./bin/SRKAWOR_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 3 10000000 1 2 &
./bin/SRKAWOR_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 3.5 10000000 1 2 &