import numpy as np
import matplotlib
# matplotlib.use('Agg')
import matplotlib.pyplot as plt
from matplotlib.pyplot import gca
import matplotlib.font_manager
import sys

# python3 plots/tomo_stop/SRKAWOR_twin_box_proj.py ct_gaussian 19558 16384 10000000 2

# 1603756 0.733794
# 1600001 0.713404
# 1640001 0.708161
# 1564640 0.71869
# 1271270 0.597489
# 1270001 0.700187
# 1860001 0.681994
# 1593977 0.706848
# 1163701 0.441478
# 1160001 0.663105
# 1380001 0.645954
# 1740662 0.657841
# 1080580 0.305716
# 1080001 0.667315
# 2460001 0.625154
# 1872679 0.622821
# 1020684 0.188537
# 1020001 0.661732
# 1950001 0.613897
# 1948466 0.612316
# 1012127 0.102973
# 1010001 0.657407
# 1970001 0.610157
# 1975970 0.610959
# 1001737 0.0531439
# 1000001 0.655306
# 2050001 0.610797
# 1990944 0.611242

if (len(sys.argv) != 5 and len(sys.argv) != 6):
	print("Incorrect number of arguments.")
	exit()

data_set = sys.argv[1]
M = int(sys.argv[2])
N = int(sys.argv[3])
max_it = int(sys.argv[4])

if (data_set == "ct"):
	output_folder = "/"
	filename_error_1 = "errors/omp_sparse/ct/SRKAWOR_box_proj_error_" + str(M) + "_" + str(N) + "_1_" + str(max_it) + ".txt"
	filename_error_2 = "errors/omp_sparse/ct/SRKAWOR_box_proj_error_" + str(M) + "_" + str(N) + "_2_" + str(max_it) + ".txt"
	filename_error_3 = "errors/omp_sparse/ct/SRKAWOR_box_proj_error_" + str(M) + "_" + str(N) + "_4_" + str(max_it) + ".txt"
	filename_error_4 = "errors/omp_sparse/ct/SRKAWOR_box_proj_error_" + str(M) + "_" + str(N) + "_8_" + str(max_it) + ".txt"
	filename_error_5 = "errors/omp_sparse/ct/SRKAWOR_box_proj_error_" + str(M) + "_" + str(N) + "_16_" + str(max_it) + ".txt"
	filename_error_6 = "errors/omp_sparse/ct/SRKAWOR_box_proj_error_" + str(M) + "_" + str(N) + "_32_" + str(max_it) + ".txt"
	filename_error_7 = "errors/omp_sparse/ct/SRKAWOR_box_proj_error_" + str(M) + "_" + str(N) + "_64_" + str(max_it) + ".txt"
	filename_error_twin_1 = "errors/tomo_stop/ct/SRKAWOR_twin_box_proj_error_" + str(M) + "_" + str(N) + "_1_" + str(max_it) + ".txt"
	filename_error_twin_2 = "errors/tomo_stop/ct/SRKAWOR_twin_box_proj_error_" + str(M) + "_" + str(N) + "_2_" + str(max_it) + ".txt"
	filename_error_twin_3 = "errors/tomo_stop/ct/SRKAWOR_twin_box_proj_error_" + str(M) + "_" + str(N) + "_4_" + str(max_it) + ".txt"
	filename_error_twin_4 = "errors/tomo_stop/ct/SRKAWOR_twin_box_proj_error_" + str(M) + "_" + str(N) + "_8_" + str(max_it) + ".txt"
	filename_error_twin_5 = "errors/tomo_stop/ct/SRKAWOR_twin_box_proj_error_" + str(M) + "_" + str(N) + "_16_" + str(max_it) + ".txt"
	filename_error_twin_6 = "errors/tomo_stop/ct/SRKAWOR_twin_box_proj_error_" + str(M) + "_" + str(N) + "_32_" + str(max_it) + ".txt"
	filename_error_twin_7 = "errors/tomo_stop/ct/SRKAWOR_twin_box_proj_error_" + str(M) + "_" + str(N) + "_64_" + str(max_it) + ".txt"
	filename_gauge_1 = "errors/tomo_stop/ct/SRKAWOR_twin_box_proj_gauge_" + str(M) + "_" + str(N) + "_1_" + str(max_it) + ".txt"
	filename_gauge_2 = "errors/tomo_stop/ct/SRKAWOR_twin_box_proj_gauge_" + str(M) + "_" + str(N) + "_2_" + str(max_it) + ".txt"
	filename_gauge_3 = "errors/tomo_stop/ct/SRKAWOR_twin_box_proj_gauge_" + str(M) + "_" + str(N) + "_4_" + str(max_it) + ".txt"
	filename_gauge_4 = "errors/tomo_stop/ct/SRKAWOR_twin_box_proj_gauge_" + str(M) + "_" + str(N) + "_8_" + str(max_it) + ".txt"
	filename_gauge_5 = "errors/tomo_stop/ct/SRKAWOR_twin_box_proj_gauge_" + str(M) + "_" + str(N) + "_16_" + str(max_it) + ".txt"
	filename_gauge_6 = "errors/tomo_stop/ct/SRKAWOR_twin_box_proj_gauge_" + str(M) + "_" + str(N) + "_32_" + str(max_it) + ".txt"
	filename_gauge_7 = "errors/tomo_stop/ct/SRKAWOR_twin_box_proj_gauge_" + str(M) + "_" + str(N) + "_64_" + str(max_it) + ".txt"
	filename_fig_1 = "SRKAWOR_twin_box_proj_" + str(M) + "_" + str(N) + "_1_" + str(max_it)
	filename_fig_2 = "SRKAWOR_twin_box_proj_" + str(M) + "_" + str(N) + "_2_" + str(max_it)
	filename_fig_3 = "SRKAWOR_twin_box_proj_" + str(M) + "_" + str(N) + "_4_" + str(max_it)
	filename_fig_4 = "SRKAWOR_twin_box_proj_" + str(M) + "_" + str(N) + "_8_" + str(max_it)
	filename_fig_5 = "SRKAWOR_twin_box_proj_" + str(M) + "_" + str(N) + "_16_" + str(max_it)
	filename_fig_6 = "SRKAWOR_twin_box_proj_" + str(M) + "_" + str(N) + "_32_" + str(max_it)
	filename_fig_7 = "SRKAWOR_twin_box_proj_" + str(M) + "_" + str(N) + "_64_" + str(max_it)
elif (data_set == "ct_gaussian"):
	seed = int(sys.argv[5])
	output_folder = "_gaussian/"
	filename_error_1 = "errors/omp_sparse/ct_gaussian/SRKAWOR_box_proj_error_" + str(M) + "_" + str(N) + "_1_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_2 = "errors/omp_sparse/ct_gaussian/SRKAWOR_box_proj_error_" + str(M) + "_" + str(N) + "_2_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_3 = "errors/omp_sparse/ct_gaussian/SRKAWOR_box_proj_error_" + str(M) + "_" + str(N) + "_4_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_4 = "errors/omp_sparse/ct_gaussian/SRKAWOR_box_proj_error_" + str(M) + "_" + str(N) + "_8_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_5 = "errors/omp_sparse/ct_gaussian/SRKAWOR_box_proj_error_" + str(M) + "_" + str(N) + "_16_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_6 = "errors/omp_sparse/ct_gaussian/SRKAWOR_box_proj_error_" + str(M) + "_" + str(N) + "_32_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_7 = "errors/omp_sparse/ct_gaussian/SRKAWOR_box_proj_error_" + str(M) + "_" + str(N) + "_64_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_twin_1 = "errors/tomo_stop/ct_gaussian/SRKAWOR_twin_box_proj_error_" + str(M) + "_" + str(N) + "_1_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_twin_2 = "errors/tomo_stop/ct_gaussian/SRKAWOR_twin_box_proj_error_" + str(M) + "_" + str(N) + "_2_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_twin_3 = "errors/tomo_stop/ct_gaussian/SRKAWOR_twin_box_proj_error_" + str(M) + "_" + str(N) + "_4_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_twin_4 = "errors/tomo_stop/ct_gaussian/SRKAWOR_twin_box_proj_error_" + str(M) + "_" + str(N) + "_8_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_twin_5 = "errors/tomo_stop/ct_gaussian/SRKAWOR_twin_box_proj_error_" + str(M) + "_" + str(N) + "_16_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_twin_6 = "errors/tomo_stop/ct_gaussian/SRKAWOR_twin_box_proj_error_" + str(M) + "_" + str(N) + "_32_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_twin_7 = "errors/tomo_stop/ct_gaussian/SRKAWOR_twin_box_proj_error_" + str(M) + "_" + str(N) + "_64_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge_1 = "errors/tomo_stop/ct_gaussian/SRKAWOR_twin_box_proj_gauge_" + str(M) + "_" + str(N) + "_1_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge_2 = "errors/tomo_stop/ct_gaussian/SRKAWOR_twin_box_proj_gauge_" + str(M) + "_" + str(N) + "_2_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge_3 = "errors/tomo_stop/ct_gaussian/SRKAWOR_twin_box_proj_gauge_" + str(M) + "_" + str(N) + "_4_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge_4 = "errors/tomo_stop/ct_gaussian/SRKAWOR_twin_box_proj_gauge_" + str(M) + "_" + str(N) + "_8_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge_5 = "errors/tomo_stop/ct_gaussian/SRKAWOR_twin_box_proj_gauge_" + str(M) + "_" + str(N) + "_16_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge_6 = "errors/tomo_stop/ct_gaussian/SRKAWOR_twin_box_proj_gauge_" + str(M) + "_" + str(N) + "_32_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge_7 = "errors/tomo_stop/ct_gaussian/SRKAWOR_twin_box_proj_gauge_" + str(M) + "_" + str(N) + "_64_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_fig_1 = "SRKAWOR_twin_box_proj_" + str(M) + "_" + str(N) + "_1_" + str(max_it) + "_" + str(seed)
	filename_fig_2 = "SRKAWOR_twin_box_proj_" + str(M) + "_" + str(N) + "_2_" + str(max_it) + "_" + str(seed)
	filename_fig_3 = "SRKAWOR_twin_box_proj_" + str(M) + "_" + str(N) + "_4_" + str(max_it) + "_" + str(seed)
	filename_fig_4 = "SRKAWOR_twin_box_proj_" + str(M) + "_" + str(N) + "_8_" + str(max_it) + "_" + str(seed)
	filename_fig_5 = "SRKAWOR_twin_box_proj_" + str(M) + "_" + str(N) + "_16_" + str(max_it) + "_" + str(seed)
	filename_fig_6 = "SRKAWOR_twin_box_proj_" + str(M) + "_" + str(N) + "_32_" + str(max_it) + "_" + str(seed)
	filename_fig_7 = "SRKAWOR_twin_box_proj_" + str(M) + "_" + str(N) + "_64_" + str(max_it) + "_" + str(seed)
elif (data_set == "ct_poisson"):
	seed = int(sys.argv[5])
	output_folder = "_poisson/"
	filename_error_1 = "errors/omp_sparse/ct_poisson/SRKAWOR_box_proj_error_" + str(M) + "_" + str(N) + "_1_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_2 = "errors/omp_sparse/ct_poisson/SRKAWOR_box_proj_error_" + str(M) + "_" + str(N) + "_2_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_3 = "errors/omp_sparse/ct_poisson/SRKAWOR_box_proj_error_" + str(M) + "_" + str(N) + "_4_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_4 = "errors/omp_sparse/ct_poisson/SRKAWOR_box_proj_error_" + str(M) + "_" + str(N) + "_8_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_5 = "errors/omp_sparse/ct_poisson/SRKAWOR_box_proj_error_" + str(M) + "_" + str(N) + "_16_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_6 = "errors/omp_sparse/ct_poisson/SRKAWOR_box_proj_error_" + str(M) + "_" + str(N) + "_32_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_7 = "errors/omp_sparse/ct_poisson/SRKAWOR_box_proj_error_" + str(M) + "_" + str(N) + "_64_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_twin_1 = "errors/tomo_stop/ct_poisson/SRKAWOR_twin_box_proj_error_" + str(M) + "_" + str(N) + "_1_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_twin_2 = "errors/tomo_stop/ct_poisson/SRKAWOR_twin_box_proj_error_" + str(M) + "_" + str(N) + "_2_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_twin_3 = "errors/tomo_stop/ct_poisson/SRKAWOR_twin_box_proj_error_" + str(M) + "_" + str(N) + "_4_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_twin_4 = "errors/tomo_stop/ct_poisson/SRKAWOR_twin_box_proj_error_" + str(M) + "_" + str(N) + "_8_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_twin_5 = "errors/tomo_stop/ct_poisson/SRKAWOR_twin_box_proj_error_" + str(M) + "_" + str(N) + "_16_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_twin_6 = "errors/tomo_stop/ct_poisson/SRKAWOR_twin_box_proj_error_" + str(M) + "_" + str(N) + "_32_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_twin_7 = "errors/tomo_stop/ct_poisson/SRKAWOR_twin_box_proj_error_" + str(M) + "_" + str(N) + "_64_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge_1 = "errors/tomo_stop/ct_poisson/SRKAWOR_twin_box_proj_gauge_" + str(M) + "_" + str(N) + "_1_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge_2 = "errors/tomo_stop/ct_poisson/SRKAWOR_twin_box_proj_gauge_" + str(M) + "_" + str(N) + "_2_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge_3 = "errors/tomo_stop/ct_poisson/SRKAWOR_twin_box_proj_gauge_" + str(M) + "_" + str(N) + "_4_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge_4 = "errors/tomo_stop/ct_poisson/SRKAWOR_twin_box_proj_gauge_" + str(M) + "_" + str(N) + "_8_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge_5 = "errors/tomo_stop/ct_poisson/SRKAWOR_twin_box_proj_gauge_" + str(M) + "_" + str(N) + "_16_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge_6 = "errors/tomo_stop/ct_poisson/SRKAWOR_twin_box_proj_gauge_" + str(M) + "_" + str(N) + "_32_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge_7 = "errors/tomo_stop/ct_poisson/SRKAWOR_twin_box_proj_gauge_" + str(M) + "_" + str(N) + "_64_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_fig_1 = "SRKAWOR_twin_box_proj_" + str(M) + "_" + str(N) + "_1_" + str(max_it) + "_" + str(seed)
	filename_fig_2 = "SRKAWOR_twin_box_proj_" + str(M) + "_" + str(N) + "_2_" + str(max_it) + "_" + str(seed)
	filename_fig_3 = "SRKAWOR_twin_box_proj_" + str(M) + "_" + str(N) + "_4_" + str(max_it) + "_" + str(seed)
	filename_fig_4 = "SRKAWOR_twin_box_proj_" + str(M) + "_" + str(N) + "_8_" + str(max_it) + "_" + str(seed)
	filename_fig_5 = "SRKAWOR_twin_box_proj_" + str(M) + "_" + str(N) + "_16_" + str(max_it) + "_" + str(seed)
	filename_fig_6 = "SRKAWOR_twin_box_proj_" + str(M) + "_" + str(N) + "_32_" + str(max_it) + "_" + str(seed)
	filename_fig_7 = "SRKAWOR_twin_box_proj_" + str(M) + "_" + str(N) + "_64_" + str(max_it) + "_" + str(seed)
else:
	print("Error opening data files.")
	exit()

try:
	with open(filename_error_1) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_1 = []
	error_1 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it > 1 and curr_it < max_it):
			it_error_1.append(int(lines[i].split()[0]))
			error_1.append(float(lines[i].split()[1]))
	with open(filename_error_2) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_2 = []
	error_2 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it > 1 and curr_it < max_it):
			it_error_2.append(int(lines[i].split()[0]))
			error_2.append(float(lines[i].split()[1]))
	with open(filename_error_3) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_3 = []
	error_3 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it > 1 and curr_it < max_it):
			it_error_3.append(int(lines[i].split()[0]))
			error_3.append(float(lines[i].split()[1]))
	with open(filename_error_4) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_4 = []
	error_4 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it > 1 and curr_it < max_it):
			it_error_4.append(int(lines[i].split()[0]))
			error_4.append(float(lines[i].split()[1]))
	with open(filename_error_5) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_5 = []
	error_5 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it > 1 and curr_it < max_it):
			it_error_5.append(int(lines[i].split()[0]))
			error_5.append(float(lines[i].split()[1]))
	with open(filename_error_6) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_6 = []
	error_6 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it > 1 and curr_it < max_it):
			it_error_6.append(int(lines[i].split()[0]))
			error_6.append(float(lines[i].split()[1]))
	with open(filename_error_7) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_7 = []
	error_7 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it > 1 and curr_it < max_it):
			it_error_7.append(int(lines[i].split()[0]))
			error_7.append(float(lines[i].split()[1]))
except IOError as e:
	print("Error opening data files.")
	exit()

try:
	with open(filename_error_twin_1) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_twin_1 = []
	error_twin_1 = []
	error_twin_1_1 = []
	error_twin_inf_1 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		curr_val = float(lines[i].split()[1])
		curr_val_1 = float(lines[i].split()[2])
		curr_val_inf = float(lines[i].split()[3])
		if (curr_it > 1 and curr_it < max_it and curr_val > 0 and curr_val_1 > 0 and curr_val_inf > 0):
			it_error_twin_1.append(int(lines[i].split()[0]))
			error_twin_1.append(float(lines[i].split()[1]))
			error_twin_1_1.append(float(lines[i].split()[2]))
			error_twin_inf_1.append(float(lines[i].split()[3]))
	with open(filename_error_twin_2) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_twin_2 = []
	error_twin_2 = []
	error_twin_1_2 = []
	error_twin_inf_2 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		curr_val = float(lines[i].split()[1])
		curr_val_1 = float(lines[i].split()[2])
		curr_val_inf = float(lines[i].split()[3])
		if (curr_it > 1 and curr_it < max_it and curr_val > 0 and curr_val_1 > 0 and curr_val_inf > 0):
			it_error_twin_2.append(int(lines[i].split()[0]))
			error_twin_2.append(float(lines[i].split()[1]))
			error_twin_1_2.append(float(lines[i].split()[2]))
			error_twin_inf_2.append(float(lines[i].split()[3]))
	with open(filename_error_twin_3) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_twin_3 = []
	error_twin_3 = []
	error_twin_1_3 = []
	error_twin_inf_3 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		curr_val = float(lines[i].split()[1])
		curr_val_1 = float(lines[i].split()[2])
		curr_val_inf = float(lines[i].split()[3])
		if (curr_it > 1 and curr_it < max_it and curr_val > 0 and curr_val_1 > 0 and curr_val_inf > 0):
			it_error_twin_3.append(int(lines[i].split()[0]))
			error_twin_3.append(float(lines[i].split()[1]))
			error_twin_1_3.append(float(lines[i].split()[2]))
			error_twin_inf_3.append(float(lines[i].split()[3]))
	with open(filename_error_twin_4) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_twin_4 = []
	error_twin_4 = []
	error_twin_1_4 = []
	error_twin_inf_4 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		curr_val = float(lines[i].split()[1])
		curr_val_1 = float(lines[i].split()[2])
		curr_val_inf = float(lines[i].split()[3])
		if (curr_it > 1 and curr_it < max_it and curr_val > 0 and curr_val_1 > 0 and curr_val_inf > 0):
			it_error_twin_4.append(int(lines[i].split()[0]))
			error_twin_4.append(float(lines[i].split()[1]))
			error_twin_1_4.append(float(lines[i].split()[2]))
			error_twin_inf_4.append(float(lines[i].split()[3]))
	with open(filename_error_twin_5) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_twin_5 = []
	error_twin_5 = []
	error_twin_1_5 = []
	error_twin_inf_5 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		curr_val = float(lines[i].split()[1])
		curr_val_1 = float(lines[i].split()[2])
		curr_val_inf = float(lines[i].split()[3])
		if (curr_it > 1 and curr_it < max_it and curr_val > 0 and curr_val_1 > 0 and curr_val_inf > 0):
			it_error_twin_5.append(int(lines[i].split()[0]))
			error_twin_5.append(float(lines[i].split()[1]))
			error_twin_1_5.append(float(lines[i].split()[2]))
			error_twin_inf_5.append(float(lines[i].split()[3]))
	with open(filename_error_twin_6) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_twin_6 = []
	error_twin_6 = []
	error_twin_1_6 = []
	error_twin_inf_6 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		curr_val = float(lines[i].split()[1])
		curr_val_1 = float(lines[i].split()[2])
		curr_val_inf = float(lines[i].split()[3])
		if (curr_it > 1 and curr_it < max_it and curr_val > 0 and curr_val_1 > 0 and curr_val_inf > 0):
			it_error_twin_6.append(int(lines[i].split()[0]))
			error_twin_6.append(float(lines[i].split()[1]))
			error_twin_1_6.append(float(lines[i].split()[2]))
			error_twin_inf_6.append(float(lines[i].split()[3]))
	with open(filename_error_twin_7) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_twin_7 = []
	error_twin_7 = []
	error_twin_1_7 = []
	error_twin_inf_7 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		curr_val = float(lines[i].split()[1])
		curr_val_1 = float(lines[i].split()[2])
		curr_val_inf = float(lines[i].split()[3])
		if (curr_it > 1 and curr_it < max_it and curr_val > 0 and curr_val_1 > 0 and curr_val_inf > 0):
			it_error_twin_7.append(int(lines[i].split()[0]))
			error_twin_7.append(float(lines[i].split()[1]))
			error_twin_1_7.append(float(lines[i].split()[2]))
			error_twin_inf_7.append(float(lines[i].split()[3]))
except IOError as e:
	print("Error opening data files.")
	exit()

try:
	with open(filename_gauge_1) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_gauge_1 = []
	gauge_1 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it > 1 and curr_it < max_it):
			it_gauge_1.append(int(lines[i].split()[0]))
			gauge_1.append(float(lines[i].split()[1]))
	with open(filename_gauge_2) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_gauge_2 = []
	gauge_2 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it > 1 and curr_it < max_it):
			it_gauge_2.append(int(lines[i].split()[0]))
			gauge_2.append(float(lines[i].split()[1]))
	with open(filename_gauge_3) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_gauge_3 = []
	gauge_3 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it > 1 and curr_it < max_it):
			it_gauge_3.append(int(lines[i].split()[0]))
			gauge_3.append(float(lines[i].split()[1]))
	with open(filename_gauge_4) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_gauge_4 = []
	gauge_4 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it > 1 and curr_it < max_it):
			it_gauge_4.append(int(lines[i].split()[0]))
			gauge_4.append(float(lines[i].split()[1]))
	with open(filename_gauge_5) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_gauge_5 = []
	gauge_5 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it > 1 and curr_it < max_it):
			it_gauge_5.append(int(lines[i].split()[0]))
			gauge_5.append(float(lines[i].split()[1]))
	with open(filename_gauge_6) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_gauge_6 = []
	gauge_6 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it > 1 and curr_it < max_it):
			it_gauge_6.append(int(lines[i].split()[0]))
			gauge_6.append(float(lines[i].split()[1]))
	with open(filename_gauge_7) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_gauge_7 = []
	gauge_7 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it > 1 and curr_it < max_it):
			it_gauge_7.append(int(lines[i].split()[0]))
			gauge_7.append(float(lines[i].split()[1]))
except IOError as e:
	print("Error opening data files.")
	exit()

import matplotlib.pylab as pylab
params = {'legend.fontsize': 'xx-large',
         'axes.labelsize': 'xx-large',
         'axes.titlesize': 'xx-large',
         'xtick.labelsize': 'xx-large',
         'ytick.labelsize': 'xx-large'}
pylab.rcParams.update(params)

plt.rc('text', usetex=True)
plt.rc('font', family='serif')

fig, ax1 = plt.subplots(figsize=(10,7))

ax1.plot(it_gauge_1, gauge_1, color='blue', label=r'$\|x^{up}-x^{down}\|_2$ - $q=1$')
ax1.set_ylabel("Error Gauge", color="blue")

ax1.scatter(it_gauge_1[gauge_1.index(min(gauge_1))], min(gauge_1), color='blue', label=r'Minimum - $\|x^{up}-x^{down}\|_2$ - $q=1$')
print(it_gauge_1[gauge_1.index(min(gauge_1))], end=' ')
print(min(gauge_1))

closest_val = min(it_error_1, key=lambda x:abs(x-it_gauge_1[gauge_1.index(min(gauge_1))]))
it_min_gauge = it_error_1[it_error_1.index(closest_val)]
find_index_it_error = it_error_1.index(it_min_gauge)

print(it_error_1[find_index_it_error], end=' ')
print(error_1[find_index_it_error])

ax1.set_xlabel(r'Iterations')
plt.grid()
ax2 = ax1.twinx()
ax2.set_ylabel("Error", color="red")
ax1.set_yscale('log')
ax2.set_yscale('log')

ax2.plot(it_error_1, error_1, color='red', label=r'$\|x^{(k)}-\overline{x}\|_2$ - $q=1$')
ax2.plot(it_error_twin_1, error_twin_1, color='purple', label=r'$\|\frac{1}{2}(x^{up}+x^{down})-\overline{x}\|_2$ - $q=1$')

ax2.scatter(it_error_1[error_1.index(min(error_1))], min(error_1), color='red', label=r'Minimum - $\|x^{(k)}-\overline{x}\|_2$ - $q=1$')
print(it_error_1[error_1.index(min(error_1))], end=' ')
print(min(error_1))

ax2.scatter(it_error_twin_1[error_twin_1.index(min(error_twin_1))], min(error_twin_1), color='purple', label=r'Minimum - $\|\frac{1}{2}(x^{up}+x^{down})-\overline{x}\|_2$ - $q=1$')
print(it_error_twin_1[error_twin_1.index(min(error_twin_1))], end=' ')
print(min(error_twin_1))

lines, labels = ax1.get_legend_handles_labels()
lines2, labels2 = ax2.get_legend_handles_labels()
ax2.legend(lines + lines2, labels + labels2, loc='best')

plt.show()
fig.savefig("plots/tomo_stop/pdf"+output_folder+filename_fig_1+".pdf", bbox_inches='tight')
fig.savefig("plots/tomo_stop/png"+output_folder+filename_fig_1+".png", bbox_inches='tight')
# plt.close()

fig, ax1 = plt.subplots(figsize=(10,7))

ax1.plot(it_gauge_2, gauge_2, color='blue', label=r'$\|x^{up}-x^{down}\|_2$ - $q=2$')
ax1.set_ylabel("Error Gauge", color="blue")

ax1.scatter(it_gauge_2[gauge_2.index(min(gauge_2))], min(gauge_2), color='blue', label=r'Minimum - $\|x^{up}-x^{down}\|_2$ - $q=2$')
print(it_gauge_2[gauge_2.index(min(gauge_2))], end=' ')
print(min(gauge_2))

closest_val = min(it_error_2, key=lambda x:abs(x-it_gauge_2[gauge_2.index(min(gauge_2))]))
it_min_gauge = it_error_2[it_error_2.index(closest_val)]
find_index_it_error = it_error_2.index(it_min_gauge)

print(it_error_2[find_index_it_error], end=' ')
print(error_2[find_index_it_error])

ax1.set_xlabel(r'Iterations')
plt.grid()
ax2 = ax1.twinx()
ax2.set_ylabel("Error", color="red")
ax1.set_yscale('log')
ax2.set_yscale('log')

ax2.plot(it_error_2, error_2, color='red', label=r'$\|x^{(k)}-\overline{x}\|_2$ - $q=2$')
ax2.plot(it_error_twin_2, error_twin_2, color='purple', label=r'$\|\frac{1}{2}(x^{up}+x^{down})-\overline{x}\|_2$ - $q=2$')

ax2.scatter(it_error_2[error_2.index(min(error_2))], min(error_2), color='red', label=r'Minimum - $\|x^{(k)}-\overline{x}\|_2$ - $q=2$')
print(it_error_2[error_2.index(min(error_2))], end=' ')
print(min(error_2))

ax2.scatter(it_error_twin_2[error_twin_2.index(min(error_twin_2))], min(error_twin_2), color='purple', label=r'Minimum - $\|\frac{1}{2}(x^{up}+x^{down})-\overline{x}\|_2$ - $q=2$')
print(it_error_twin_2[error_twin_2.index(min(error_twin_2))], end=' ')
print(min(error_twin_2))

lines, labels = ax1.get_legend_handles_labels()
lines2, labels2 = ax2.get_legend_handles_labels()
ax2.legend(lines + lines2, labels + labels2, loc='best')

plt.show()
fig.savefig("plots/tomo_stop/pdf"+output_folder+filename_fig_2+".pdf", bbox_inches='tight')
fig.savefig("plots/tomo_stop/png"+output_folder+filename_fig_2+".png", bbox_inches='tight')
# plt.close()

fig, ax1 = plt.subplots(figsize=(10,7))

ax1.plot(it_gauge_3, gauge_3, color='blue', label=r'$\|x^{up}-x^{down}\|_2$ - $q=4$')
ax1.set_ylabel("Error Gauge", color="blue")

ax1.scatter(it_gauge_3[gauge_3.index(min(gauge_3))], min(gauge_3), color='blue', label=r'Minimum - $\|x^{up}-x^{down}\|_2$ - $q=4$')
print(it_gauge_3[gauge_3.index(min(gauge_3))], end=' ')
print(min(gauge_3))

closest_val = min(it_error_3, key=lambda x:abs(x-it_gauge_3[gauge_3.index(min(gauge_3))]))
it_min_gauge = it_error_3[it_error_3.index(closest_val)]
find_index_it_error = it_error_3.index(it_min_gauge)

print(it_error_3[find_index_it_error], end=' ')
print(error_3[find_index_it_error])

ax1.set_xlabel(r'Iterations')
plt.grid()
ax2 = ax1.twinx()
ax2.set_ylabel("Error", color="red")
ax1.set_yscale('log')
ax2.set_yscale('log')

ax2.plot(it_error_3, error_3, color='red', label=r'$\|x^{(k)}-\overline{x}\|_2$ - $q=4$')
ax2.plot(it_error_twin_3, error_twin_3, color='purple', label=r'$\|\frac{1}{2}(x^{up}+x^{down})-\overline{x}\|_2$ - $q=4$')

ax2.scatter(it_error_3[error_3.index(min(error_3))], min(error_3), color='red', label=r'Minimum - $\|x^{(k)}-\overline{x}\|_2$ - $q=4$')
print(it_error_3[error_3.index(min(error_3))], end=' ')
print(min(error_3))

ax2.scatter(it_error_twin_3[error_twin_3.index(min(error_twin_3))], min(error_twin_3), color='purple', label=r'Minimum - $\|\frac{1}{2}(x^{up}+x^{down})-\overline{x}\|_2$ - $q=4$')
print(it_error_twin_3[error_twin_3.index(min(error_twin_3))], end=' ')
print(min(error_twin_3))

lines, labels = ax1.get_legend_handles_labels()
lines2, labels2 = ax2.get_legend_handles_labels()
ax2.legend(lines + lines2, labels + labels2, loc='best')

plt.show()
fig.savefig("plots/tomo_stop/pdf"+output_folder+filename_fig_3+".pdf", bbox_inches='tight')
fig.savefig("plots/tomo_stop/png"+output_folder+filename_fig_3+".png", bbox_inches='tight')
# plt.close()

fig, ax1 = plt.subplots(figsize=(10,7))

ax1.plot(it_gauge_4, gauge_4, color='blue', label=r'$\|x^{up}-x^{down}\|_2$ - $q=8$')
ax1.set_ylabel("Error Gauge", color="blue")

ax1.scatter(it_gauge_4[gauge_4.index(min(gauge_4))], min(gauge_4), color='blue', label=r'Minimum - $\|x^{up}-x^{down}\|_2$ - $q=8$')
print(it_gauge_4[gauge_4.index(min(gauge_4))], end=' ')
print(min(gauge_4))

closest_val = min(it_error_4, key=lambda x:abs(x-it_gauge_4[gauge_4.index(min(gauge_4))]))
it_min_gauge = it_error_4[it_error_4.index(closest_val)]
find_index_it_error = it_error_4.index(it_min_gauge)

print(it_error_4[find_index_it_error], end=' ')
print(error_4[find_index_it_error])

ax1.set_xlabel(r'Iterations')
plt.grid()
ax2 = ax1.twinx()
ax2.set_ylabel("Error", color="red")
ax1.set_yscale('log')
ax2.set_yscale('log')

ax2.plot(it_error_4, error_4, color='red', label=r'$\|x^{(k)}-\overline{x}\|_2$ - $q=8$')
ax2.plot(it_error_twin_4, error_twin_4, color='purple', label=r'$\|\frac{1}{2}(x^{up}+x^{down})-\overline{x}\|_2$ - $q=8$')

ax2.scatter(it_error_4[error_4.index(min(error_4))], min(error_4), color='red', label=r'Minimum - $\|x^{(k)}-\overline{x}\|_2$ - $q=8$')
print(it_error_4[error_4.index(min(error_4))], end=' ')
print(min(error_4))

ax2.scatter(it_error_twin_4[error_twin_4.index(min(error_twin_4))], min(error_twin_4), color='purple', label=r'Minimum - $\|\frac{1}{2}(x^{up}+x^{down})-\overline{x}\|_2$ - $q=8$')
print(it_error_twin_4[error_twin_4.index(min(error_twin_4))], end=' ')
print(min(error_twin_4))

lines, labels = ax1.get_legend_handles_labels()
lines2, labels2 = ax2.get_legend_handles_labels()
ax2.legend(lines + lines2, labels + labels2, loc='best')

plt.show()
fig.savefig("plots/tomo_stop/pdf"+output_folder+filename_fig_4+".pdf", bbox_inches='tight')
fig.savefig("plots/tomo_stop/png"+output_folder+filename_fig_4+".png", bbox_inches='tight')
# plt.close()

fig, ax1 = plt.subplots(figsize=(10,7))

ax1.plot(it_gauge_5, gauge_5, color='blue', label=r'$\|x^{up}-x^{down}\|_2$ - $q=16$')
ax1.set_ylabel("Error Gauge", color="blue")

ax1.scatter(it_gauge_5[gauge_5.index(min(gauge_5))], min(gauge_5), color='blue', label=r'Minimum - $\|x^{up}-x^{down}\|_2$ - $q=16$')
print(it_gauge_5[gauge_5.index(min(gauge_5))], end=' ')
print(min(gauge_5))

closest_val = min(it_error_5, key=lambda x:abs(x-it_gauge_5[gauge_5.index(min(gauge_5))]))
it_min_gauge = it_error_5[it_error_5.index(closest_val)]
find_index_it_error = it_error_5.index(it_min_gauge)

print(it_error_5[find_index_it_error], end=' ')
print(error_5[find_index_it_error])

ax1.set_xlabel(r'Iterations')
plt.grid()
ax2 = ax1.twinx()
ax2.set_ylabel("Error", color="red")
ax1.set_yscale('log')
ax2.set_yscale('log')

ax2.plot(it_error_5, error_5, color='red', label=r'$\|x^{(k)}-\overline{x}\|_2$ - $q=16$')
ax2.plot(it_error_twin_5, error_twin_5, color='purple', label=r'$\|\frac{1}{2}(x^{up}+x^{down})-\overline{x}\|_2$ - $q=16$')

ax2.scatter(it_error_5[error_5.index(min(error_5))], min(error_5), color='red', label=r'Minimum - $\|x^{(k)}-\overline{x}\|_2$ - $q=16$')
print(it_error_5[error_5.index(min(error_5))], end=' ')
print(min(error_5))

ax2.scatter(it_error_twin_5[error_twin_5.index(min(error_twin_5))], min(error_twin_5), color='purple', label=r'Minimum - $\|\frac{1}{2}(x^{up}+x^{down})-\overline{x}\|_2$ - $q=16$')
print(it_error_twin_5[error_twin_5.index(min(error_twin_5))], end=' ')
print(min(error_twin_5))

lines, labels = ax1.get_legend_handles_labels()
lines2, labels2 = ax2.get_legend_handles_labels()
ax2.legend(lines + lines2, labels + labels2, loc='best')

plt.show()
fig.savefig("plots/tomo_stop/pdf"+output_folder+filename_fig_5+".pdf", bbox_inches='tight')
fig.savefig("plots/tomo_stop/png"+output_folder+filename_fig_5+".png", bbox_inches='tight')
# plt.close()

fig, ax1 = plt.subplots(figsize=(10,7))

ax1.plot(it_gauge_6, gauge_6, color='blue', label=r'$\|x^{up}-x^{down}\|_2$ - $q=32$')
ax1.set_ylabel("Error Gauge", color="blue")

ax1.scatter(it_gauge_6[gauge_6.index(min(gauge_6))], min(gauge_6), color='blue', label=r'Minimum - $\|x^{up}-x^{down}\|_2$ - $q=32$')
print(it_gauge_6[gauge_6.index(min(gauge_6))], end=' ')
print(min(gauge_6))

closest_val = min(it_error_6, key=lambda x:abs(x-it_gauge_6[gauge_6.index(min(gauge_6))]))
it_min_gauge = it_error_6[it_error_6.index(closest_val)]
find_index_it_error = it_error_6.index(it_min_gauge)

print(it_error_6[find_index_it_error], end=' ')
print(error_6[find_index_it_error])

ax1.set_xlabel(r'Iterations')
plt.grid()
ax2 = ax1.twinx()
ax2.set_ylabel("Error", color="red")
ax1.set_yscale('log')
ax2.set_yscale('log')

ax2.plot(it_error_6, error_6, color='red', label=r'$\|x^{(k)}-\overline{x}\|_2$ - $q=32$')
ax2.plot(it_error_twin_6, error_twin_6, color='purple', label=r'$\|\frac{1}{2}(x^{up}+x^{down})-\overline{x}\|_2$ - $q=32$')

ax2.scatter(it_error_6[error_6.index(min(error_6))], min(error_6), color='red', label=r'Minimum - $\|x^{(k)}-\overline{x}\|_2$ - $q=32$')
print(it_error_6[error_6.index(min(error_6))], end=' ')
print(min(error_6))

ax2.scatter(it_error_twin_6[error_twin_6.index(min(error_twin_6))], min(error_twin_6), color='purple', label=r'Minimum - $\|\frac{1}{2}(x^{up}+x^{down})-\overline{x}\|_2$ - $q=32$')
print(it_error_twin_6[error_twin_6.index(min(error_twin_6))], end=' ')
print(min(error_twin_6))

lines, labels = ax1.get_legend_handles_labels()
lines2, labels2 = ax2.get_legend_handles_labels()
ax2.legend(lines + lines2, labels + labels2, loc='best')

plt.show()
fig.savefig("plots/tomo_stop/pdf"+output_folder+filename_fig_6+".pdf", bbox_inches='tight')
fig.savefig("plots/tomo_stop/png"+output_folder+filename_fig_6+".png", bbox_inches='tight')
# plt.close()

fig, ax1 = plt.subplots(figsize=(10,7))

ax1.plot(it_gauge_7, gauge_7, color='blue', label=r'$\|x^{up}-x^{down}\|_2$ - $q=64$')
ax1.set_ylabel("Error Gauge", color="blue")

ax1.scatter(it_gauge_7[gauge_7.index(min(gauge_7))], min(gauge_7), color='blue', label=r'Minimum - $\|x^{up}-x^{down}\|_2$ - $q=64$')
print(it_gauge_7[gauge_7.index(min(gauge_7))], end=' ')
print(min(gauge_7))

closest_val = min(it_error_7, key=lambda x:abs(x-it_gauge_7[gauge_7.index(min(gauge_7))]))
it_min_gauge = it_error_7[it_error_7.index(closest_val)]
find_index_it_error = it_error_7.index(it_min_gauge)

print(it_error_7[find_index_it_error], end=' ')
print(error_7[find_index_it_error])

ax1.set_xlabel(r'Iterations')
plt.grid()
ax2 = ax1.twinx()
ax2.set_ylabel("Error", color="red")
ax1.set_yscale('log')
ax2.set_yscale('log')

ax2.plot(it_error_7, error_7, color='red', label=r'$\|x^{(k)}-\overline{x}\|_2$ - $q=64$')
ax2.plot(it_error_twin_7, error_twin_7, color='purple', label=r'$\|\frac{1}{2}(x^{up}+x^{down})-\overline{x}\|_2$ - $q=64$')

ax2.scatter(it_error_7[error_7.index(min(error_7))], min(error_7), color='red', label=r'Minimum - $\|x^{(k)}-\overline{x}\|_2$ - $q=64$')
print(it_error_7[error_7.index(min(error_7))], end=' ')
print(min(error_7))

ax2.scatter(it_error_twin_7[error_twin_7.index(min(error_twin_7))], min(error_twin_7), color='purple', label=r'Minimum - $\|\frac{1}{2}(x^{up}+x^{down})-\overline{x}\|_2$ - $q=64$')
print(it_error_twin_7[error_twin_7.index(min(error_twin_7))], end=' ')
print(min(error_twin_7))

lines, labels = ax1.get_legend_handles_labels()
lines2, labels2 = ax2.get_legend_handles_labels()
ax2.legend(lines + lines2, labels + labels2, loc='best')

plt.show()
fig.savefig("plots/tomo_stop/pdf"+output_folder+filename_fig_7+".pdf", bbox_inches='tight')
fig.savefig("plots/tomo_stop/png"+output_folder+filename_fig_7+".png", bbox_inches='tight')
# plt.close()