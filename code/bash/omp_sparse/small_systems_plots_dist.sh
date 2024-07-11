#!/bin/bash

# bash bash/omp_sparse/small_systems_plots_dist.sh > outputs/omp_sparse/ct_gaussian/small_systems_plots_dist.txt &

python3 plots/omp_sparse/CKA_dist.py ct_gaussian 19558 16384 30000000 2
# python3 plots/omp_sparse/CKA_pos_proj_dist.py ct_gaussian 19558 16384 10000000 2
# python3 plots/omp_sparse/CKA_box_proj_dist.py ct_gaussian 19558 16384 10000000 2

python3 plots/omp_sparse/RKA_dist.py ct_gaussian 19558 16384 30000000 2
# python3 plots/omp_sparse/RKA_pos_proj_dist.py ct_gaussian 19558 16384 10000000 2
# python3 plots/omp_sparse/RKA_box_proj_dist.py ct_gaussian 19558 16384 10000000 2

python3 plots/omp_sparse/SRKAWOR_dist.py ct_gaussian 19558 16384 30000000 2
# python3 plots/omp_sparse/SRKAWOR_pos_proj_dist.py ct_gaussian 19558 16384 10000000 2
# python3 plots/omp_sparse/SRKAWOR_box_proj_dist.py ct_gaussian 19558 16384 10000000 2