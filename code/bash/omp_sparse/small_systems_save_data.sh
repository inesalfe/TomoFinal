#!/bin/bash

# bash bash/omp_sparse/small_systems_save_data.sh > outputs/progress/small_systems_save_data.txt

# scp -J inesaf@maxwell.inesc-id.pt inesaf@ulam:/home/inesaf/Documents/Tomo/code/errors/omp_sparse/ct_gaussian/*19558_16384*_2.txt errors/omp_sparse/ct_gaussian/

# scp -J inesaf@maxwell.inesc-id.pt inesaf@ulam:/home/inesaf/Documents/Tomo/code/errors/omp_sparse/ct_gaussian/*CKA_error_19558_16384*_2.txt errors/omp_sparse/ct_gaussian/
# scp -J inesaf@maxwell.inesc-id.pt inesaf@ulam:/home/inesaf/Documents/Tomo/code/errors/omp_sparse/ct_gaussian/*CKA_res_19558_16384*_2.txt errors/omp_sparse/ct_gaussian/
# scp -J inesaf@maxwell.inesc-id.pt inesaf@ulam:/home/inesaf/Documents/Tomo/code/errors/omp_sparse/ct_gaussian/*CKA_pos_proj_error_19558_16384*_2.txt errors/omp_sparse/ct_gaussian/
# scp -J inesaf@maxwell.inesc-id.pt inesaf@ulam:/home/inesaf/Documents/Tomo/code/errors/omp_sparse/ct_gaussian/*CKA_pos_proj_res_19558_16384*_2.txt errors/omp_sparse/ct_gaussian/
# scp -J inesaf@maxwell.inesc-id.pt inesaf@ulam:/home/inesaf/Documents/Tomo/code/errors/omp_sparse/ct_gaussian/*CKA_box_proj_error_19558_16384*_2.txt errors/omp_sparse/ct_gaussian/
# scp -J inesaf@maxwell.inesc-id.pt inesaf@ulam:/home/inesaf/Documents/Tomo/code/errors/omp_sparse/ct_gaussian/*CKA_box_proj_res_19558_16384*_2.txt errors/omp_sparse/ct_gaussian/

# scp -J inesaf@maxwell.inesc-id.pt inesaf@ulam:/home/inesaf/Documents/Tomo/code/errors/omp_sparse/ct_gaussian/*RKA_error_19558_16384*_2.txt errors/omp_sparse/ct_gaussian/
# scp -J inesaf@maxwell.inesc-id.pt inesaf@ulam:/home/inesaf/Documents/Tomo/code/errors/omp_sparse/ct_gaussian/*RKA_res_19558_16384*_2.txt errors/omp_sparse/ct_gaussian/
# scp -J inesaf@maxwell.inesc-id.pt inesaf@ulam:/home/inesaf/Documents/Tomo/code/errors/omp_sparse/ct_gaussian/*RKA_pos_proj_error_19558_16384*_2.txt errors/omp_sparse/ct_gaussian/
# scp -J inesaf@maxwell.inesc-id.pt inesaf@ulam:/home/inesaf/Documents/Tomo/code/errors/omp_sparse/ct_gaussian/*RKA_pos_proj_res_19558_16384*_2.txt errors/omp_sparse/ct_gaussian/
# scp -J inesaf@maxwell.inesc-id.pt inesaf@ulam:/home/inesaf/Documents/Tomo/code/errors/omp_sparse/ct_gaussian/*RKA_box_proj_error_19558_16384*_2.txt errors/omp_sparse/ct_gaussian/
# scp -J inesaf@maxwell.inesc-id.pt inesaf@ulam:/home/inesaf/Documents/Tomo/code/errors/omp_sparse/ct_gaussian/*RKA_box_proj_res_19558_16384*_2.txt errors/omp_sparse/ct_gaussian/

# scp -J inesaf@maxwell.inesc-id.pt inesaf@ulam:/home/inesaf/Documents/Tomo/code/errors/omp_sparse/ct_gaussian/*SRKAWOR_error_19558_16384*_2.txt errors/omp_sparse/ct_gaussian/
# scp -J inesaf@maxwell.inesc-id.pt inesaf@ulam:/home/inesaf/Documents/Tomo/code/errors/omp_sparse/ct_gaussian/*SRKAWOR_res_19558_16384*_2.txt errors/omp_sparse/ct_gaussian/
# scp -J inesaf@maxwell.inesc-id.pt inesaf@ulam:/home/inesaf/Documents/Tomo/code/errors/omp_sparse/ct_gaussian/*SRKAWOR_pos_proj_error_19558_16384*_2.txt errors/omp_sparse/ct_gaussian/
# scp -J inesaf@maxwell.inesc-id.pt inesaf@ulam:/home/inesaf/Documents/Tomo/code/errors/omp_sparse/ct_gaussian/*SRKAWOR_pos_proj_res_19558_16384*_2.txt errors/omp_sparse/ct_gaussian/
# scp -J inesaf@maxwell.inesc-id.pt inesaf@ulam:/home/inesaf/Documents/Tomo/code/errors/omp_sparse/ct_gaussian/*SRKAWOR_box_proj_error_19558_16384*_2.txt errors/omp_sparse/ct_gaussian/
# scp -J inesaf@maxwell.inesc-id.pt inesaf@ulam:/home/inesaf/Documents/Tomo/code/errors/omp_sparse/ct_gaussian/*SRKAWOR_box_proj_res_19558_16384*_2.txt errors/omp_sparse/ct_gaussian/

./bin/CKA_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 30000000 10000 2
./bin/CKA_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 30000000 10000 2
./bin/CKA_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 30000000 10000 2
./bin/CKA_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 30000000 10000 2
./bin/CKA_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 30000000 10000 2
./bin/CKA_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 30000000 10000 2
./bin/CKA_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 30000000 10000 2

./bin/RKA_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 30000000 10000 2
./bin/RKA_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 30000000 10000 2
./bin/RKA_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 30000000 10000 2
./bin/RKA_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 30000000 10000 2
./bin/RKA_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 30000000 10000 2
./bin/RKA_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 30000000 10000 2
./bin/RKA_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 30000000 10000 2

./bin/SRKAWOR_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 30000000 10000 2
./bin/SRKAWOR_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 30000000 10000 2
./bin/SRKAWOR_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 30000000 10000 2
./bin/SRKAWOR_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 30000000 10000 2
./bin/SRKAWOR_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 30000000 10000 2
./bin/SRKAWOR_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 30000000 10000 2
./bin/SRKAWOR_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 30000000 10000 2

./bin/CKA_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 10000000 10000 2
./bin/CKA_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 10000000 10000 2
./bin/CKA_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 10000000 10000 2
./bin/CKA_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 10000000 10000 2
./bin/CKA_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 10000000 10000 2
./bin/CKA_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 10000000 10000 2
./bin/CKA_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 10000000 10000 2

./bin/RKA_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 10000000 10000 2
./bin/RKA_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 10000000 10000 2
./bin/RKA_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 10000000 10000 2
./bin/RKA_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 10000000 10000 2
./bin/RKA_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 10000000 10000 2
./bin/RKA_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 10000000 10000 2
./bin/RKA_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 10000000 10000 2

./bin/SRKAWOR_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 10000000 10000 2
./bin/SRKAWOR_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 10000000 10000 2
./bin/SRKAWOR_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 10000000 10000 2
./bin/SRKAWOR_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 10000000 10000 2
./bin/SRKAWOR_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 10000000 10000 2
./bin/SRKAWOR_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 10000000 10000 2
./bin/SRKAWOR_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 10000000 10000 2

./bin/CKA_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 10000000 10000 2
./bin/CKA_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 10000000 10000 2
./bin/CKA_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 10000000 10000 2
./bin/CKA_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 10000000 10000 2
./bin/CKA_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 10000000 10000 2
./bin/CKA_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 10000000 10000 2
./bin/CKA_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 10000000 10000 2

./bin/RKA_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 10000000 10000 2
./bin/RKA_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 10000000 10000 2
./bin/RKA_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 10000000 10000 2
./bin/RKA_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 10000000 10000 2
./bin/RKA_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 10000000 10000 2
./bin/RKA_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 10000000 10000 2
./bin/RKA_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 10000000 10000 2

./bin/SRKAWOR_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 10000000 10000 2
./bin/SRKAWOR_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 10000000 10000 2
./bin/SRKAWOR_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 10000000 10000 2
./bin/SRKAWOR_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 10000000 10000 2
./bin/SRKAWOR_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 10000000 10000 2
./bin/SRKAWOR_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 10000000 10000 2
./bin/SRKAWOR_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 10000000 10000 2