#!/bin/bash

# bash bash/omp_sparse/small_systems_save_data_alpha.sh >> outputs/progress/small_systems_save_data_alpha.txt

./bin/CKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 0.5 30000000 10000 2
./bin/CKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 1 30000000 10000 2
./bin/CKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 1.5 30000000 10000 2
./bin/CKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 2 30000000 10000 2
./bin/CKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 2.5 30000000 10000 2
./bin/CKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 3 30000000 10000 2
./bin/CKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 3.5 30000000 10000 2

./bin/RKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 0.5 30000000 10000 2
./bin/RKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 1 30000000 10000 2
./bin/RKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 1.5 30000000 10000 2
./bin/RKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 2 30000000 10000 2
./bin/RKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 2.5 30000000 10000 2
./bin/RKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 3 30000000 10000 2
./bin/RKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 3.5 30000000 10000 2

./bin/SRKAWOR_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 0.5 30000000 10000 2
./bin/SRKAWOR_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 1 30000000 10000 2
./bin/SRKAWOR_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 1.5 30000000 10000 2
./bin/SRKAWOR_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 2 30000000 10000 2
./bin/SRKAWOR_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 2.5 30000000 10s000 2
./bin/SRKAWOR_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 3 30000000 10000 2
./bin/SRKAWOR_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 3.5 30000000 10000 2

./bin/CKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 0.5 10000000 10000 2
./bin/CKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 1 10000000 10000 2
./bin/CKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 1.5 10000000 10000 2
./bin/CKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 2 10000000 10000 2
./bin/CKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 2.5 10000000 10000 2
./bin/CKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 3 10000000 10000 2
./bin/CKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 3.5 10000000 10000 2

./bin/RKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 0.5 10000000 10000 2
./bin/RKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 1 10000000 10000 2
./bin/RKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 1.5 10000000 10000 2
./bin/RKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 2 10000000 10000 2
./bin/RKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 2.5 10000000 10000 2
./bin/RKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 3 10000000 10000 2
./bin/RKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 3.5 10000000 10000 2

./bin/SRKAWOR_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 0.5 10000000 10000 2
./bin/SRKAWOR_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 1 10000000 10000 2
./bin/SRKAWOR_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 1.5 10000000 10000 2
./bin/SRKAWOR_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 2 10000000 10000 2
./bin/SRKAWOR_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 2.5 10000000 10000 2
./bin/SRKAWOR_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 3 10000000 10000 2
./bin/SRKAWOR_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 3.5 10000000 10000 2

./bin/CKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 0.25 30000000 10000 2
./bin/CKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 0.5 30000000 10000 2
./bin/CKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 0.75 30000000 10000 2
./bin/CKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 1 30000000 10000 2
./bin/CKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 1.25 30000000 10000 2
./bin/CKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 1.5 30000000 10000 2
./bin/CKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 1.75 30000000 10000 2

./bin/RKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 0.25 30000000 10000 2
./bin/RKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 0.5 30000000 10000 2
./bin/RKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 0.75 30000000 10000 2
./bin/RKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 1 30000000 10000 2
./bin/RKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 1.25 30000000 10000 2
./bin/RKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 1.5 30000000 10000 2
./bin/RKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 1.75 30000000 10000 2

./bin/SRKAWOR_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 0.25 30000000 10000 2
./bin/SRKAWOR_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 0.5 30000000 10000 2
./bin/SRKAWOR_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 0.75 30000000 10000 2
./bin/SRKAWOR_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 1 30000000 10000 2
./bin/SRKAWOR_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 1.25 30000000 10000 2
./bin/SRKAWOR_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 1.5 30000000 10000 2
./bin/SRKAWOR_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 1.75 30000000 10000 2

./bin/CKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 0.25 10000000 10000 2
./bin/CKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 0.5 10000000 10000 2
./bin/CKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 0.75 10000000 10000 2
./bin/CKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 1 10000000 10000 2
./bin/CKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 1.25 10000000 10000 2
./bin/CKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 1.5 10000000 10000 2
./bin/CKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 1.75 10000000 10000 2

./bin/RKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 0.25 10000000 10000 2
./bin/RKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 0.5 10000000 10000 2
./bin/RKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 0.75 10000000 10000 2
./bin/RKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 1 10000000 10000 2
./bin/RKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 1.25 10000000 10000 2
./bin/RKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 1.5 10000000 10000 2
./bin/RKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 1.75 10000000 10000 2

./bin/SRKAWOR_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 0.25 10000000 10000 2
./bin/SRKAWOR_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 0.5 10000000 10000 2
./bin/SRKAWOR_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 0.75 10000000 10000 2
./bin/SRKAWOR_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 1 10000000 10000 2
./bin/SRKAWOR_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 1.25 10000000 10000 2
./bin/SRKAWOR_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 1.5 10000000 10000 2
./bin/SRKAWOR_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 1.75 10000000 10000 2

./bin/CKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 0.5 30000000 10000 2
./bin/CKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 1 30000000 10000 2
./bin/CKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 2 30000000 10000 2
./bin/CKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 3 30000000 10000 2
./bin/CKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 4 30000000 10000 2
./bin/CKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 5 30000000 10000 2
./bin/CKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 6 30000000 10000 2

./bin/RKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 0.5 30000000 10000 2
./bin/RKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 1 30000000 10000 2
./bin/RKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 2 30000000 10000 2
./bin/RKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 3 30000000 10000 2
./bin/RKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 4 30000000 10000 2
./bin/RKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 5 30000000 10000 2
./bin/RKA_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 6 30000000 10000 2

./bin/SRKAWOR_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 0.5 30000000 10000 2
./bin/SRKAWOR_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 1 30000000 10000 2
./bin/SRKAWOR_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 2 30000000 10000 2
./bin/SRKAWOR_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 3 30000000 10000 2
./bin/SRKAWOR_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 4 30000000 10000 2
./bin/SRKAWOR_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 5 30000000 10000 2
./bin/SRKAWOR_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 6 30000000 10000 2

./bin/CKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 0.5 10000000 10000 2
./bin/CKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 1 10000000 10000 2
./bin/CKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 2 10000000 10000 2
./bin/CKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 3 10000000 10000 2
./bin/CKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 4 10000000 10000 2
./bin/CKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 5 10000000 10000 2
./bin/CKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 6 10000000 10000 2

./bin/RKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 0.5 10000000 10000 2
./bin/RKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 1 10000000 10000 2
./bin/RKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 2 10000000 10000 2
./bin/RKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 3 10000000 10000 2
./bin/RKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 4 10000000 10000 2
./bin/RKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 5 10000000 10000 2
./bin/RKA_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 6 10000000 10000 2

./bin/SRKAWOR_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 0.5 10000000 10000 2
./bin/SRKAWOR_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 1 10000000 10000 2
./bin/SRKAWOR_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 2 10000000 10000 2
./bin/SRKAWOR_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 3 10000000 10000 2
./bin/SRKAWOR_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 4 10000000 10000 2
./bin/SRKAWOR_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 5 10000000 10000 2
./bin/SRKAWOR_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 8 6 10000000 10000 2