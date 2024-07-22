import numpy as np
import matplotlib
# matplotlib.use('Agg')
import matplotlib.pyplot as plt
from matplotlib.pyplot import gca
import matplotlib.font_manager
import sys

# python3 plots/tomo_stop/SRKWOR_twin_alpha.py ct_gaussian 19558 16384 30000000 2

# 4850385 0.672893
# 4850001 3.85988
# 29820001 3.23845
# 29982415 3.19827
# 2542541 1.1037
# 2540001 3.82602
# 12550001 3.33341
# 14883639 3.24857
# 1466851 1.65106
# 1470001 3.85531
# 5470001 3.48596
# 6982207 3.34683
# 880111 2.39859
# 880001 4.10899
# 2370001 3.71567
# 3305303 3.50912
# 567183 3.30518
# 570001 4.2143
# 1050001 4.03815
# 1642873 3.74463
# 234697 6.61244
# 230001 5.83838
# 300001 5.70435
# 352045 4.82478
# 19559 46.1943
# 20001 32.8996
# 10001 32.1312
# 19559 23.3985

if (len(sys.argv) != 5 and len(sys.argv) != 6):
	print("Incorrect number of arguments.")
	exit()

data_set = sys.argv[1]
M = int(sys.argv[2])
N = int(sys.argv[3])
max_it = int(sys.argv[4])

alpha_1 = 0.15
alpha_2 = 0.3
alpha_3 = 0.5
alpha_4 = 0.75
alpha_5 = 1
alpha_6 = 1.5
alpha_7 = 2

alpha_1_string = '\\alpha = ' + f'{alpha_1:.2f}'
alpha_2_string = '\\alpha = ' + f'{alpha_2:.2f}'
alpha_3_string = '\\alpha = ' + f'{alpha_3:.2f}'
alpha_4_string = '\\alpha = ' + f'{alpha_4:.2f}'
alpha_5_string = '\\alpha = ' + f'{alpha_5:.2f}'
alpha_6_string = '\\alpha = ' + f'{alpha_6:.2f}'
alpha_7_string = '\\alpha = ' + f'{alpha_7:.2f}'

if (data_set == "ct"):
	output_folder = "/"
	filename_error_1 = "errors/seq_sparse/ct/SRKWOR_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_1) + "_" + str(max_it) + ".txt"
	filename_error_2 = "errors/seq_sparse/ct/SRKWOR_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_2) + "_" + str(max_it) + ".txt"
	filename_error_3 = "errors/seq_sparse/ct/SRKWOR_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_3) + "_" + str(max_it) + ".txt"
	filename_error_4 = "errors/seq_sparse/ct/SRKWOR_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_4) + "_" + str(max_it) + ".txt"
	filename_error_5 = "errors/seq_sparse/ct/SRKWOR_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_5) + "_" + str(max_it) + ".txt"
	filename_error_6 = "errors/seq_sparse/ct/SRKWOR_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_6) + "_" + str(max_it) + ".txt"
	filename_error_7 = "errors/seq_sparse/ct/SRKWOR_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_7) + "_" + str(max_it) + ".txt"
	filename_error_twin_1 = "errors/tomo_stop/ct/SRKWOR_twin_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_1) + "_" + str(max_it) + ".txt"
	filename_error_twin_2 = "errors/tomo_stop/ct/SRKWOR_twin_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_2) + "_" + str(max_it) + ".txt"
	filename_error_twin_3 = "errors/tomo_stop/ct/SRKWOR_twin_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_3) + "_" + str(max_it) + ".txt"
	filename_error_twin_4 = "errors/tomo_stop/ct/SRKWOR_twin_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_4) + "_" + str(max_it) + ".txt"
	filename_error_twin_5 = "errors/tomo_stop/ct/SRKWOR_twin_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_5) + "_" + str(max_it) + ".txt"
	filename_error_twin_6 = "errors/tomo_stop/ct/SRKWOR_twin_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_6) + "_" + str(max_it) + ".txt"
	filename_error_twin_7 = "errors/tomo_stop/ct/SRKWOR_twin_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_7) + "_" + str(max_it) + ".txt"
	filename_gauge_1 = "errors/tomo_stop/ct/SRKWOR_twin_alpha_gauge_" + str(M) + "_" + str(N) + "_" + str(alpha_1) + "_" + str(max_it) + ".txt"
	filename_gauge_2 = "errors/tomo_stop/ct/SRKWOR_twin_alpha_gauge_" + str(M) + "_" + str(N) + "_" + str(alpha_2) + "_" + str(max_it) + ".txt"
	filename_gauge_3 = "errors/tomo_stop/ct/SRKWOR_twin_alpha_gauge_" + str(M) + "_" + str(N) + "_" + str(alpha_3) + "_" + str(max_it) + ".txt"
	filename_gauge_4 = "errors/tomo_stop/ct/SRKWOR_twin_alpha_gauge_" + str(M) + "_" + str(N) + "_" + str(alpha_4) + "_" + str(max_it) + ".txt"
	filename_gauge_5 = "errors/tomo_stop/ct/SRKWOR_twin_alpha_gauge_" + str(M) + "_" + str(N) + "_" + str(alpha_5) + "_" + str(max_it) + ".txt"
	filename_gauge_6 = "errors/tomo_stop/ct/SRKWOR_twin_alpha_gauge_" + str(M) + "_" + str(N) + "_" + str(alpha_6) + "_" + str(max_it) + ".txt"
	filename_gauge_7 = "errors/tomo_stop/ct/SRKWOR_twin_alpha_gauge_" + str(M) + "_" + str(N) + "_" + str(alpha_7) + "_" + str(max_it) + ".txt"
	filename_fig_1 = "SRKWOR_twin_alpha_" + str(M) + "_" + str(N) + "_" + str(alpha_1) + "_" + str(max_it)
	filename_fig_2 = "SRKWOR_twin_alpha_" + str(M) + "_" + str(N) + "_" + str(alpha_2) + "_" + str(max_it)
	filename_fig_3 = "SRKWOR_twin_alpha_" + str(M) + "_" + str(N) + "_" + str(alpha_3) + "_" + str(max_it)
	filename_fig_4 = "SRKWOR_twin_alpha_" + str(M) + "_" + str(N) + "_" + str(alpha_4) + "_" + str(max_it)
	filename_fig_5 = "SRKWOR_twin_alpha_" + str(M) + "_" + str(N) + "_" + str(alpha_5) + "_" + str(max_it)
	filename_fig_6 = "SRKWOR_twin_alpha_" + str(M) + "_" + str(N) + "_" + str(alpha_6) + "_" + str(max_it)
	filename_fig_7 = "SRKWOR_twin_alpha_" + str(M) + "_" + str(N) + "_" + str(alpha_7) + "_" + str(max_it)
elif (data_set == "ct_gaussian"):
	seed = int(sys.argv[5])
	output_folder = "_gaussian/"
	filename_error_1 = "errors/seq_sparse/ct_gaussian/SRKWOR_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_1) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_2 = "errors/seq_sparse/ct_gaussian/SRKWOR_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_2) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_3 = "errors/seq_sparse/ct_gaussian/SRKWOR_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_3) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_4 = "errors/seq_sparse/ct_gaussian/SRKWOR_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_4) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_5 = "errors/seq_sparse/ct_gaussian/SRKWOR_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_5) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_6 = "errors/seq_sparse/ct_gaussian/SRKWOR_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_6) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_7 = "errors/seq_sparse/ct_gaussian/SRKWOR_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_7) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_twin_1 = "errors/tomo_stop/ct_gaussian/SRKWOR_twin_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_1) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_twin_2 = "errors/tomo_stop/ct_gaussian/SRKWOR_twin_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_2) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_twin_3 = "errors/tomo_stop/ct_gaussian/SRKWOR_twin_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_3) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_twin_4 = "errors/tomo_stop/ct_gaussian/SRKWOR_twin_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_4) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_twin_5 = "errors/tomo_stop/ct_gaussian/SRKWOR_twin_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_5) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_twin_6 = "errors/tomo_stop/ct_gaussian/SRKWOR_twin_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_6) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_twin_7 = "errors/tomo_stop/ct_gaussian/SRKWOR_twin_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_7) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge_1 = "errors/tomo_stop/ct_gaussian/SRKWOR_twin_alpha_gauge_" + str(M) + "_" + str(N) + "_" + str(alpha_1) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge_2 = "errors/tomo_stop/ct_gaussian/SRKWOR_twin_alpha_gauge_" + str(M) + "_" + str(N) + "_" + str(alpha_2) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge_3 = "errors/tomo_stop/ct_gaussian/SRKWOR_twin_alpha_gauge_" + str(M) + "_" + str(N) + "_" + str(alpha_3) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge_4 = "errors/tomo_stop/ct_gaussian/SRKWOR_twin_alpha_gauge_" + str(M) + "_" + str(N) + "_" + str(alpha_4) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge_5 = "errors/tomo_stop/ct_gaussian/SRKWOR_twin_alpha_gauge_" + str(M) + "_" + str(N) + "_" + str(alpha_5) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge_6 = "errors/tomo_stop/ct_gaussian/SRKWOR_twin_alpha_gauge_" + str(M) + "_" + str(N) + "_" + str(alpha_6) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge_7 = "errors/tomo_stop/ct_gaussian/SRKWOR_twin_alpha_gauge_" + str(M) + "_" + str(N) + "_" + str(alpha_7) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_fig_1 = "SRKWOR_twin_alpha_" + str(M) + "_" + str(N) + "_" + str(alpha_1) + "_" + str(max_it) + "_" + str(seed)
	filename_fig_2 = "SRKWOR_twin_alpha_" + str(M) + "_" + str(N) + "_" + str(alpha_2) + "_" + str(max_it) + "_" + str(seed)
	filename_fig_3 = "SRKWOR_twin_alpha_" + str(M) + "_" + str(N) + "_" + str(alpha_3) + "_" + str(max_it) + "_" + str(seed)
	filename_fig_4 = "SRKWOR_twin_alpha_" + str(M) + "_" + str(N) + "_" + str(alpha_4) + "_" + str(max_it) + "_" + str(seed)
	filename_fig_5 = "SRKWOR_twin_alpha_" + str(M) + "_" + str(N) + "_" + str(alpha_5) + "_" + str(max_it) + "_" + str(seed)
	filename_fig_6 = "SRKWOR_twin_alpha_" + str(M) + "_" + str(N) + "_" + str(alpha_6) + "_" + str(max_it) + "_" + str(seed)
	filename_fig_7 = "SRKWOR_twin_alpha_" + str(M) + "_" + str(N) + "_" + str(alpha_7) + "_" + str(max_it) + "_" + str(seed)
elif (data_set == "ct_poisson"):
	seed = int(sys.argv[5])
	output_folder = "_poisson/"
	filename_error_1 = "errors/seq_sparse/ct_poisson/SRKWOR_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_1) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_2 = "errors/seq_sparse/ct_poisson/SRKWOR_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_2) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_3 = "errors/seq_sparse/ct_poisson/SRKWOR_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_3) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_4 = "errors/seq_sparse/ct_poisson/SRKWOR_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_4) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_5 = "errors/seq_sparse/ct_poisson/SRKWOR_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_5) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_6 = "errors/seq_sparse/ct_poisson/SRKWOR_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_6) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_7 = "errors/seq_sparse/ct_poisson/SRKWOR_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_7) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_twin_1 = "errors/tomo_stop/ct_poisson/SRKWOR_twin_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_1) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_twin_2 = "errors/tomo_stop/ct_poisson/SRKWOR_twin_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_2) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_twin_3 = "errors/tomo_stop/ct_poisson/SRKWOR_twin_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_3) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_twin_4 = "errors/tomo_stop/ct_poisson/SRKWOR_twin_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_4) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_twin_5 = "errors/tomo_stop/ct_poisson/SRKWOR_twin_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_5) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_twin_6 = "errors/tomo_stop/ct_poisson/SRKWOR_twin_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_6) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_twin_7 = "errors/tomo_stop/ct_poisson/SRKWOR_twin_alpha_error_" + str(M) + "_" + str(N) + "_" + str(alpha_7) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge_1 = "errors/tomo_stop/ct_poisson/SRKWOR_twin_alpha_gauge_" + str(M) + "_" + str(N) + "_" + str(alpha_1) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge_2 = "errors/tomo_stop/ct_poisson/SRKWOR_twin_alpha_gauge_" + str(M) + "_" + str(N) + "_" + str(alpha_2) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge_3 = "errors/tomo_stop/ct_poisson/SRKWOR_twin_alpha_gauge_" + str(M) + "_" + str(N) + "_" + str(alpha_3) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge_4 = "errors/tomo_stop/ct_poisson/SRKWOR_twin_alpha_gauge_" + str(M) + "_" + str(N) + "_" + str(alpha_4) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge_5 = "errors/tomo_stop/ct_poisson/SRKWOR_twin_alpha_gauge_" + str(M) + "_" + str(N) + "_" + str(alpha_5) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge_6 = "errors/tomo_stop/ct_poisson/SRKWOR_twin_alpha_gauge_" + str(M) + "_" + str(N) + "_" + str(alpha_6) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge_7 = "errors/tomo_stop/ct_poisson/SRKWOR_twin_alpha_gauge_" + str(M) + "_" + str(N) + "_" + str(alpha_7) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_fig_1 = "SRKWOR_twin_alpha_" + str(M) + "_" + str(N) + "_" + str(alpha_1) + "_" + str(max_it) + "_" + str(seed)
	filename_fig_2 = "SRKWOR_twin_alpha_" + str(M) + "_" + str(N) + "_" + str(alpha_2) + "_" + str(max_it) + "_" + str(seed)
	filename_fig_3 = "SRKWOR_twin_alpha_" + str(M) + "_" + str(N) + "_" + str(alpha_3) + "_" + str(max_it) + "_" + str(seed)
	filename_fig_4 = "SRKWOR_twin_alpha_" + str(M) + "_" + str(N) + "_" + str(alpha_4) + "_" + str(max_it) + "_" + str(seed)
	filename_fig_5 = "SRKWOR_twin_alpha_" + str(M) + "_" + str(N) + "_" + str(alpha_5) + "_" + str(max_it) + "_" + str(seed)
	filename_fig_6 = "SRKWOR_twin_alpha_" + str(M) + "_" + str(N) + "_" + str(alpha_6) + "_" + str(max_it) + "_" + str(seed)
	filename_fig_7 = "SRKWOR_twin_alpha_" + str(M) + "_" + str(N) + "_" + str(alpha_7) + "_" + str(max_it) + "_" + str(seed)
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

ax1.plot(it_gauge_1, gauge_1, color='blue', label=r'$\|x^{up}-x^{down}\|_2$ - $%s$'%alpha_1_string)
ax1.set_ylabel("Error Gauge", color="blue")

ax1.scatter(it_gauge_1[gauge_1.index(min(gauge_1))], min(gauge_1), color='blue', label=r'Minimum - $\|x^{up}-x^{down}\|_2$ - $%s$'%alpha_1_string)
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

ax2.plot(it_error_1, error_1, color='red', label=r'$\|x^{(k)}-\overline{x}\|_2$ - $%s$'%alpha_1_string)
ax2.plot(it_error_twin_1, error_twin_1, color='purple', label=r'$\|\frac{1}{2}(x^{up}+x^{down})-\overline{x}\|_2$ - $%s$'%alpha_1_string)

ax2.scatter(it_error_1[error_1.index(min(error_1))], min(error_1), color='red', label=r'Minimum - $\|x^{(k)}-\overline{x}\|_2$ - $%s$'%alpha_1_string)
print(it_error_1[error_1.index(min(error_1))], end=' ')
print(min(error_1))

ax2.scatter(it_error_twin_1[error_twin_1.index(min(error_twin_1))], min(error_twin_1), color='purple', label=r'Minimum - $\|\frac{1}{2}(x^{up}+x^{down})-\overline{x}\|_2$ - $%s$'%alpha_1_string)
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

ax1.plot(it_gauge_2, gauge_2, color='blue', label=r'$\|x^{up}-x^{down}\|_2$ - $%s$'%alpha_2_string)
ax1.set_ylabel("Error Gauge", color="blue")

ax1.scatter(it_gauge_2[gauge_2.index(min(gauge_2))], min(gauge_2), color='blue', label=r'Minimum - $\|x^{up}-x^{down}\|_2$ - $%s$'%alpha_2_string)
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

ax2.plot(it_error_2, error_2, color='red', label=r'$\|x^{(k)}-\overline{x}\|_2$ - $%s$'%alpha_2_string)
ax2.plot(it_error_twin_2, error_twin_2, color='purple', label=r'$\|\frac{1}{2}(x^{up}+x^{down})-\overline{x}\|_2$ - $%s$'%alpha_2_string)

ax2.scatter(it_error_2[error_2.index(min(error_2))], min(error_2), color='red', label=r'Minimum - $\|x^{(k)}-\overline{x}\|_2$ - $%s$'%alpha_2_string)
print(it_error_2[error_2.index(min(error_2))], end=' ')
print(min(error_2))

ax2.scatter(it_error_twin_2[error_twin_2.index(min(error_twin_2))], min(error_twin_2), color='purple', label=r'Minimum - $\|\frac{1}{2}(x^{up}+x^{down})-\overline{x}\|_2$ - $%s$'%alpha_2_string)
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

ax1.plot(it_gauge_3, gauge_3, color='blue', label=r'$\|x^{up}-x^{down}\|_2$ - $%s$'%alpha_3_string)
ax1.set_ylabel("Error Gauge", color="blue")

ax1.scatter(it_gauge_3[gauge_3.index(min(gauge_3))], min(gauge_3), color='blue', label=r'Minimum - $\|x^{up}-x^{down}\|_2$ - $%s$'%alpha_3_string)
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

ax2.plot(it_error_3, error_3, color='red', label=r'$\|x^{(k)}-\overline{x}\|_2$ - $%s$'%alpha_3_string)
ax2.plot(it_error_twin_3, error_twin_3, color='purple', label=r'$\|\frac{1}{2}(x^{up}+x^{down})-\overline{x}\|_2$ - $%s$'%alpha_3_string)

ax2.scatter(it_error_3[error_3.index(min(error_3))], min(error_3), color='red', label=r'Minimum - $\|x^{(k)}-\overline{x}\|_2$ - $%s$'%alpha_3_string)
print(it_error_3[error_3.index(min(error_3))], end=' ')
print(min(error_3))

ax2.scatter(it_error_twin_3[error_twin_3.index(min(error_twin_3))], min(error_twin_3), color='purple', label=r'Minimum - $\|\frac{1}{2}(x^{up}+x^{down})-\overline{x}\|_2$ - $%s$'%alpha_3_string)
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

ax1.plot(it_gauge_4, gauge_4, color='blue', label=r'$\|x^{up}-x^{down}\|_2$ - $%s$'%alpha_4_string)
ax1.set_ylabel("Error Gauge", color="blue")

ax1.scatter(it_gauge_4[gauge_4.index(min(gauge_4))], min(gauge_4), color='blue', label=r'Minimum - $\|x^{up}-x^{down}\|_2$ - $%s$'%alpha_4_string)
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

ax2.plot(it_error_4, error_4, color='red', label=r'$\|x^{(k)}-\overline{x}\|_2$ - $%s$'%alpha_4_string)
ax2.plot(it_error_twin_4, error_twin_4, color='purple', label=r'$\|\frac{1}{2}(x^{up}+x^{down})-\overline{x}\|_2$ - $%s$'%alpha_4_string)

ax2.scatter(it_error_4[error_4.index(min(error_4))], min(error_4), color='red', label=r'Minimum - $\|x^{(k)}-\overline{x}\|_2$ - $%s$'%alpha_4_string)
print(it_error_4[error_4.index(min(error_4))], end=' ')
print(min(error_4))

ax2.scatter(it_error_twin_4[error_twin_4.index(min(error_twin_4))], min(error_twin_4), color='purple', label=r'Minimum - $\|\frac{1}{2}(x^{up}+x^{down})-\overline{x}\|_2$ - $%s$'%alpha_4_string)
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

ax1.plot(it_gauge_5, gauge_5, color='blue', label=r'$\|x^{up}-x^{down}\|_2$ - $%s$'%alpha_5_string)
ax1.set_ylabel("Error Gauge", color="blue")

ax1.scatter(it_gauge_5[gauge_5.index(min(gauge_5))], min(gauge_5), color='blue', label=r'Minimum - $\|x^{up}-x^{down}\|_2$ - $%s$'%alpha_5_string)
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

ax2.plot(it_error_5, error_5, color='red', label=r'$\|x^{(k)}-\overline{x}\|_2$ - $%s$'%alpha_5_string)
ax2.plot(it_error_twin_5, error_twin_5, color='purple', label=r'$\|\frac{1}{2}(x^{up}+x^{down})-\overline{x}\|_2$ - $%s$'%alpha_5_string)

ax2.scatter(it_error_5[error_5.index(min(error_5))], min(error_5), color='red', label=r'Minimum - $\|x^{(k)}-\overline{x}\|_2$ - $%s$'%alpha_5_string)
print(it_error_5[error_5.index(min(error_5))], end=' ')
print(min(error_5))

ax2.scatter(it_error_twin_5[error_twin_5.index(min(error_twin_5))], min(error_twin_5), color='purple', label=r'Minimum - $\|\frac{1}{2}(x^{up}+x^{down})-\overline{x}\|_2$ - $%s$'%alpha_5_string)
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

ax1.plot(it_gauge_6, gauge_6, color='blue', label=r'$\|x^{up}-x^{down}\|_2$ - $%s$'%alpha_6_string)
ax1.set_ylabel("Error Gauge", color="blue")

ax1.scatter(it_gauge_6[gauge_6.index(min(gauge_6))], min(gauge_6), color='blue', label=r'Minimum - $\|x^{up}-x^{down}\|_2$ - $%s$'%alpha_6_string)
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

ax2.plot(it_error_6, error_6, color='red', label=r'$\|x^{(k)}-\overline{x}\|_2$ - $%s$'%alpha_6_string)
ax2.plot(it_error_twin_6, error_twin_6, color='purple', label=r'$\|\frac{1}{2}(x^{up}+x^{down})-\overline{x}\|_2$ - $%s$'%alpha_6_string)

ax2.scatter(it_error_6[error_6.index(min(error_6))], min(error_6), color='red', label=r'Minimum - $\|x^{(k)}-\overline{x}\|_2$ - $%s$'%alpha_6_string)
print(it_error_6[error_6.index(min(error_6))], end=' ')
print(min(error_6))

ax2.scatter(it_error_twin_6[error_twin_6.index(min(error_twin_6))], min(error_twin_6), color='purple', label=r'Minimum - $\|\frac{1}{2}(x^{up}+x^{down})-\overline{x}\|_2$ - $%s$'%alpha_6_string)
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

ax1.plot(it_gauge_7, gauge_7, color='blue', label=r'$\|x^{up}-x^{down}\|_2$ - $%s$'%alpha_7_string)
ax1.set_ylabel("Error Gauge", color="blue")

ax1.scatter(it_gauge_7[gauge_7.index(min(gauge_7))], min(gauge_7), color='blue', label=r'Minimum - $\|x^{up}-x^{down}\|_2$ - $%s$'%alpha_7_string)
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

ax2.plot(it_error_7, error_7, color='red', label=r'$\|x^{(k)}-\overline{x}\|_2$ - $%s$'%alpha_7_string)
ax2.plot(it_error_twin_7, error_twin_7, color='purple', label=r'$\|\frac{1}{2}(x^{up}+x^{down})-\overline{x}\|_2$ - $%s$'%alpha_7_string)

ax2.scatter(it_error_7[error_7.index(min(error_7))], min(error_7), color='red', label=r'Minimum - $\|x^{(k)}-\overline{x}\|_2$ - $%s$'%alpha_7_string)
print(it_error_7[error_7.index(min(error_7))], end=' ')
print(min(error_7))

ax2.scatter(it_error_twin_7[error_twin_7.index(min(error_twin_7))], min(error_twin_7), color='purple', label=r'Minimum - $\|\frac{1}{2}(x^{up}+x^{down})-\overline{x}\|_2$ - $%s$'%alpha_7_string)
print(it_error_twin_7[error_twin_7.index(min(error_twin_7))], end=' ')
print(min(error_twin_7))

lines, labels = ax1.get_legend_handles_labels()
lines2, labels2 = ax2.get_legend_handles_labels()
ax2.legend(lines + lines2, labels + labels2, loc='best')

plt.show()
fig.savefig("plots/tomo_stop/pdf"+output_folder+filename_fig_7+".pdf", bbox_inches='tight')
fig.savefig("plots/tomo_stop/png"+output_folder+filename_fig_7+".png", bbox_inches='tight')
# plt.close()