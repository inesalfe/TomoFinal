#!/bin/bash

# bash bash/seq_sparse/small_systems_plots.sh > outputs/seq_sparse/ct_gaussian/small_systems_plots.txt &

python3 plots/seq_sparse/RK.py ct_gaussian 19558 16384 50000000 2
python3 plots/seq_sparse/CK.py ct_gaussian 19558 16384 30000000 2
python3 plots/seq_sparse/SRKWOR.py ct_gaussian 19558 16384 30000000 2
python3 plots/seq_sparse/RK_pos_ineq.py ct_gaussian 19558 16384 50000000 2
python3 plots/seq_sparse/CK_pos_ineq.py ct_gaussian 19558 16384 30000000 2
python3 plots/seq_sparse/SRKWOR_pos_ineq.py ct_gaussian 19558 16384 30000000 2
python3 plots/seq_sparse/RK_box_ineq.py ct_gaussian 19558 16384 50000000 2
python3 plots/seq_sparse/CK_box_ineq.py ct_gaussian 19558 16384 30000000 2
python3 plots/seq_sparse/SRKWOR_box_ineq.py ct_gaussian 19558 16384 30000000 2
python3 plots/seq_sparse/RK_pos_proj.py ct_gaussian 19558 16384 50000000 2
python3 plots/seq_sparse/CK_pos_proj.py ct_gaussian 19558 16384 30000000 2
python3 plots/seq_sparse/SRKWOR_pos_proj.py ct_gaussian 19558 16384 30000000 2
python3 plots/seq_sparse/RK_box_proj.py ct_gaussian 19558 16384 50000000 2
python3 plots/seq_sparse/CK_box_proj.py ct_gaussian 19558 16384 30000000 2
python3 plots/seq_sparse/SRKWOR_box_proj.py ct_gaussian 19558 16384 30000000 2