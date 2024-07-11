#!/bin/bash

# bash bash/seq_sparse/small_systems_save_data.sh > outputs/progress/small_systems_save_data.txt &

# scp -J inesaf@maxwell.inesc-id.pt inesaf@ulam:/home/inesaf/Documents/Tomo/code/errors/seq_sparse/ct_gaussian/*19558_16384*_2.txt errors/seq_sparse/ct_gaussian/

./bin/CK_csr_max_it_data.exe ct_gaussian 10 19558 16384 10000000 10000 2
echo "CK ct_gaussian 10 19558 16384 10000000 10000 2"
./bin/CK_box_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 10000000 10000 2
echo "CK_box_ineq ct_gaussian 10 19558 16384 10000000 10000 2"
./bin/CK_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 10000000 10000 2
echo "CK_box_proj ct_gaussian 10 19558 16384 10000000 10000 2"
./bin/CK_pos_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 10000000 10000 2
echo "CK_pos_ineq ct_gaussian 10 19558 16384 10000000 10000 2"
./bin/CK_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 10000000 10000 2
echo "CK_pos_proj ct_gaussian 10 19558 16384 10000000 10000 2"

./bin/CK_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2
echo "CK ct_gaussian 10 19558 16384 30000000 10000 2"
./bin/CK_box_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2
echo "CK_box_ineq ct_gaussian 10 19558 16384 30000000 10000 2"
./bin/CK_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2
echo "CK_box_proj ct_gaussian 10 19558 16384 30000000 10000 2"
./bin/CK_pos_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2
echo "CK_pos_ineq ct_gaussian 10 19558 16384 30000000 10000 2"
./bin/CK_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2
echo "CK_pos_proj ct_gaussian 10 19558 16384 30000000 10000 2"

./bin/RK_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2
echo "RK ct_gaussian 10 19558 16384 30000000 10000 2"
./bin/RK_box_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2
echo "RK_box_ineq ct_gaussian 10 19558 16384 30000000 10000 2"
./bin/RK_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2
echo "RK_box_proj ct_gaussian 10 19558 16384 30000000 10000 2"
./bin/RK_pos_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2
echo "RK_pos_ineq ct_gaussian 10 19558 16384 30000000 10000 2"
./bin/RK_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2
echo "RK_pos_proj ct_gaussian 10 19558 16384 30000000 10000 2"

./bin/RK_csr_max_it_data.exe ct_gaussian 10 19558 16384 50000000 10000 2
echo "RK ct_gaussian 10 19558 16384 50000000 10000 2"
./bin/RK_box_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 50000000 10000 2
echo "RK_box_ineq ct_gaussian 10 19558 16384 50000000 10000 2"
./bin/RK_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 50000000 10000 2
echo "RK_box_proj ct_gaussian 10 19558 16384 50000000 10000 2"
./bin/RK_pos_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 50000000 10000 2
echo "RK_pos_ineq ct_gaussian 10 19558 16384 50000000 10000 2"
./bin/RK_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 50000000 10000 2
echo "RK_pos_proj ct_gaussian 10 19558 16384 50000000 10000 2"

./bin/SRKWOR_csr_max_it_data.exe ct_gaussian 10 19558 16384 10000000 10000 2
echo "SRKWOR ct_gaussian 10 19558 16384 10000000 10000 2"
./bin/SRKWOR_box_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 10000000 10000 2
echo "SRKWOR_box_ineq ct_gaussian 10 19558 16384 10000000 10000 2"
./bin/SRKWOR_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 10000000 10000 2
echo "SRKWOR_box_proj ct_gaussian 10 19558 16384 10000000 10000 2"
./bin/SRKWOR_pos_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 10000000 10000 2
echo "SRKWOR_pos_ineq ct_gaussian 10 19558 16384 10000000 10000 2"
./bin/SRKWOR_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 10000000 10000 2
echo "SRKWOR_pos_proj ct_gaussian 10 19558 16384 10000000 10000 2"

./bin/SRKWOR_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2
echo "SRKWOR ct_gaussian 10 19558 16384 30000000 10000 2"
./bin/SRKWOR_box_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2
echo "SRKWOR_box_ineq ct_gaussian 10 19558 16384 30000000 10000 2"
./bin/SRKWOR_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2
echo "SRKWOR_box_proj ct_gaussian 10 19558 16384 30000000 10000 2"
./bin/SRKWOR_pos_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2
echo "SRKWOR_pos_ineq ct_gaussian 10 19558 16384 30000000 10000 2"
./bin/SRKWOR_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2
echo "SRKWOR_pos_proj ct_gaussian 10 19558 16384 30000000 10000 2"