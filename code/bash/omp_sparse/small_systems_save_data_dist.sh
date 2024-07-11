#!/bin/bash

# bash bash/omp_sparse/small_systems_save_data_dist.sh > outputs/progress/small_systems_save_data_dist.txt

./bin/CKA_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 1 30000000 10000 2
./bin/CKA_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 2 30000000 10000 2
./bin/CKA_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 4 30000000 10000 2
./bin/CKA_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 8 30000000 10000 2
./bin/CKA_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 16 30000000 10000 2
./bin/CKA_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 32 30000000 10000 2
./bin/CKA_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 64 30000000 10000 2

./bin/RKA_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 1 30000000 10000 2
./bin/RKA_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 2 30000000 10000 2
./bin/RKA_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 4 30000000 10000 2
./bin/RKA_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 8 30000000 10000 2
./bin/RKA_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 16 30000000 10000 2
./bin/RKA_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 32 30000000 10000 2
./bin/RKA_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 64 30000000 10000 2

./bin/SRKAWOR_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 1 30000000 10000 2
./bin/SRKAWOR_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 2 30000000 10000 2
./bin/SRKAWOR_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 4 30000000 10000 2
./bin/SRKAWOR_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 8 30000000 10000 2
./bin/SRKAWOR_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 16 30000000 10000 2
./bin/SRKAWOR_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 32 30000000 10000 2
./bin/SRKAWOR_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 64 30000000 10000 2

./bin/CKA_pos_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 1 10000000 10000 2
./bin/CKA_pos_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 2 10000000 10000 2
./bin/CKA_pos_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 4 10000000 10000 2
./bin/CKA_pos_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 8 10000000 10000 2
./bin/CKA_pos_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 16 10000000 10000 2
./bin/CKA_pos_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 32 10000000 10000 2
./bin/CKA_pos_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 64 10000000 10000 2

./bin/RKA_pos_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 1 10000000 10000 2
./bin/RKA_pos_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 2 10000000 10000 2
./bin/RKA_pos_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 4 10000000 10000 2
./bin/RKA_pos_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 8 10000000 10000 2
./bin/RKA_pos_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 16 10000000 10000 2
./bin/RKA_pos_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 32 10000000 10000 2
./bin/RKA_pos_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 64 10000000 10000 2

./bin/SRKAWOR_pos_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 1 10000000 10000 2
./bin/SRKAWOR_pos_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 2 10000000 10000 2
./bin/SRKAWOR_pos_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 4 10000000 10000 2
./bin/SRKAWOR_pos_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 8 10000000 10000 2
./bin/SRKAWOR_pos_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 16 10000000 10000 2
./bin/SRKAWOR_pos_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 32 10000000 10000 2
./bin/SRKAWOR_pos_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 64 10000000 10000 2

./bin/CKA_box_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 1 10000000 10000 2
./bin/CKA_box_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 2 10000000 10000 2
./bin/CKA_box_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 4 10000000 10000 2
./bin/CKA_box_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 8 10000000 10000 2
./bin/CKA_box_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 16 10000000 10000 2
./bin/CKA_box_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 32 10000000 10000 2
./bin/CKA_box_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 64 10000000 10000 2

./bin/RKA_box_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 1 10000000 10000 2
./bin/RKA_box_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 2 10000000 10000 2
./bin/RKA_box_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 4 10000000 10000 2
./bin/RKA_box_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 8 10000000 10000 2
./bin/RKA_box_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 16 10000000 10000 2
./bin/RKA_box_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 32 10000000 10000 2
./bin/RKA_box_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 64 10000000 10000 2

./bin/SRKAWOR_box_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 1 10000000 10000 2
./bin/SRKAWOR_box_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 2 10000000 10000 2
./bin/SRKAWOR_box_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 4 10000000 10000 2
./bin/SRKAWOR_box_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 8 10000000 10000 2
./bin/SRKAWOR_box_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 16 10000000 10000 2
./bin/SRKAWOR_box_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 32 10000000 10000 2
./bin/SRKAWOR_box_proj_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 64 10000000 10000 2