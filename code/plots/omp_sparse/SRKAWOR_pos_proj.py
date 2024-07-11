import numpy as np
import matplotlib
# matplotlib.use('Agg')
import matplotlib.pyplot as plt
from matplotlib.pyplot import gca
import matplotlib.font_manager
import sys

# python3 plots/omp_sparse/SRKAWOR_pos_proj.py ct_gaussian 19558 16384 10000000 2

if (len(sys.argv) != 5 and len(sys.argv) != 6):
	print("Incorrect number of arguments.")
	exit()

data_set = sys.argv[1]
M = int(sys.argv[2])
N = int(sys.argv[3])
max_it = int(sys.argv[4])

if (data_set == "ct"):
	error_folder = "errors/omp_sparse/ct/"
	output_foler = "/"
	filename_error_1 = error_folder + "SRKAWOR_pos_proj_error_" + str(M) + "_" + str(N) + "_1_" + str(max_it) + ".txt"
	filename_res_1 = error_folder + "SRKAWOR_pos_proj_res_" + str(M) + "_" + str(N) + "_1_" + str(max_it) + ".txt"
	filename_error_2 = error_folder + "SRKAWOR_pos_proj_error_" + str(M) + "_" + str(N) + "_2_" + str(max_it) + ".txt"
	filename_res_2 = error_folder + "SRKAWOR_pos_proj_res_" + str(M) + "_" + str(N) + "_2_" + str(max_it) + ".txt"
	filename_error_4 = error_folder + "SRKAWOR_pos_proj_error_" + str(M) + "_" + str(N) + "_4_" + str(max_it) + ".txt"
	filename_res_4 = error_folder + "SRKAWOR_pos_proj_res_" + str(M) + "_" + str(N) + "_4_" + str(max_it) + ".txt"
	filename_error_8 = error_folder + "SRKAWOR_pos_proj_error_" + str(M) + "_" + str(N) + "_8_" + str(max_it) + ".txt"
	filename_res_8 = error_folder + "SRKAWOR_pos_proj_res_" + str(M) + "_" + str(N) + "_8_" + str(max_it) + ".txt"
	filename_error_16 = error_folder + "SRKAWOR_pos_proj_error_" + str(M) + "_" + str(N) + "_16_" + str(max_it) + ".txt"
	filename_res_16 = error_folder + "SRKAWOR_pos_proj_res_" + str(M) + "_" + str(N) + "_16_" + str(max_it) + ".txt"
	filename_error_32 = error_folder + "SRKAWOR_pos_proj_error_" + str(M) + "_" + str(N) + "_32_" + str(max_it) + ".txt"
	filename_res_32 = error_folder + "SRKAWOR_pos_proj_res_" + str(M) + "_" + str(N) + "_32_" + str(max_it) + ".txt"
	filename_error_64 = error_folder + "SRKAWOR_pos_proj_error_" + str(M) + "_" + str(N) + "_64_" + str(max_it) + ".txt"
	filename_res_64 = error_folder + "SRKAWOR_pos_proj_res_" + str(M) + "_" + str(N) + "_64_" + str(max_it) + ".txt"
	filename_fig_error = "SRKAWOR_pos_proj_error_" + str(M) + "_" + str(N) + "_" + str(max_it)
	filename_fig_res = "SRKAWOR_pos_proj_res_" + str(M) + "_" + str(N) + "_" + str(max_it)
elif (data_set == "ct_gaussian"):
	seed = int(sys.argv[5])
	error_folder = "errors/omp_sparse/ct_gaussian/"
	output_foler = "_gaussian/"
	filename_error_1 = error_folder + "SRKAWOR_pos_proj_error_" + str(M) + "_" + str(N) + "_1_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_1 = error_folder + "SRKAWOR_pos_proj_res_" + str(M) + "_" + str(N) + "_1_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_2 = error_folder + "SRKAWOR_pos_proj_error_" + str(M) + "_" + str(N) + "_2_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_2 = error_folder + "SRKAWOR_pos_proj_res_" + str(M) + "_" + str(N) + "_2_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_4 = error_folder + "SRKAWOR_pos_proj_error_" + str(M) + "_" + str(N) + "_4_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_4 = error_folder + "SRKAWOR_pos_proj_res_" + str(M) + "_" + str(N) + "_4_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_8 = error_folder + "SRKAWOR_pos_proj_error_" + str(M) + "_" + str(N) + "_8_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_8 = error_folder + "SRKAWOR_pos_proj_res_" + str(M) + "_" + str(N) + "_8_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_16 = error_folder + "SRKAWOR_pos_proj_error_" + str(M) + "_" + str(N) + "_16_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_16 = error_folder + "SRKAWOR_pos_proj_res_" + str(M) + "_" + str(N) + "_16_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_32 = error_folder + "SRKAWOR_pos_proj_error_" + str(M) + "_" + str(N) + "_32_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_32 = error_folder + "SRKAWOR_pos_proj_res_" + str(M) + "_" + str(N) + "_32_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_64 = error_folder + "SRKAWOR_pos_proj_error_" + str(M) + "_" + str(N) + "_64_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_64 = error_folder + "SRKAWOR_pos_proj_res_" + str(M) + "_" + str(N) + "_64_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_fig_error = "SRKAWOR_pos_proj_error_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed)
	filename_fig_res = "SRKAWOR_pos_proj_res_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed)
elif (data_set == "ct_poisson"):
	seed = int(sys.argv[5])
	error_folder = "errors/omp_sparse/ct_poisson/"
	output_foler = "_poisson/"
	filename_error_1 = error_folder + "SRKAWOR_pos_proj_error_" + str(M) + "_" + str(N) + "_1_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_1 = error_folder + "SRKAWOR_pos_proj_res_" + str(M) + "_" + str(N) + "_1_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_2 = error_folder + "SRKAWOR_pos_proj_error_" + str(M) + "_" + str(N) + "_2_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_2 = error_folder + "SRKAWOR_pos_proj_res_" + str(M) + "_" + str(N) + "_2_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_4 = error_folder + "SRKAWOR_pos_proj_error_" + str(M) + "_" + str(N) + "_4_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_4 = error_folder + "SRKAWOR_pos_proj_res_" + str(M) + "_" + str(N) + "_4_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_8 = error_folder + "SRKAWOR_pos_proj_error_" + str(M) + "_" + str(N) + "_8_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_8 = error_folder + "SRKAWOR_pos_proj_res_" + str(M) + "_" + str(N) + "_8_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_16 = error_folder + "SRKAWOR_pos_proj_error_" + str(M) + "_" + str(N) + "_16_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_16 = error_folder + "SRKAWOR_pos_proj_res_" + str(M) + "_" + str(N) + "_16_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_32 = error_folder + "SRKAWOR_pos_proj_error_" + str(M) + "_" + str(N) + "_32_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_32 = error_folder + "SRKAWOR_pos_proj_res_" + str(M) + "_" + str(N) + "_32_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_64 = error_folder + "SRKAWOR_pos_proj_error_" + str(M) + "_" + str(N) + "_64_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_64 = error_folder + "SRKAWOR_pos_proj_res_" + str(M) + "_" + str(N) + "_64_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_fig_error = "SRKAWOR_pos_proj_error_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed)
	filename_fig_res = "SRKAWOR_pos_proj_res_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed)
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
		if (curr_it < max_it):
			it_error_1.append(int(lines[i].split()[0]))
			error_1.append(float(lines[i].split()[1]))
	with open(filename_error_2) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_2 = []
	error_2 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_error_2.append(int(lines[i].split()[0]))
			error_2.append(float(lines[i].split()[1]))
	with open(filename_error_4) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_4 = []
	error_4 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_error_4.append(int(lines[i].split()[0]))
			error_4.append(float(lines[i].split()[1]))
	with open(filename_error_8) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_8 = []
	error_8 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_error_8.append(int(lines[i].split()[0]))
			error_8.append(float(lines[i].split()[1]))
	with open(filename_error_16) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_16 = []
	error_16 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_error_16.append(int(lines[i].split()[0]))
			error_16.append(float(lines[i].split()[1]))
	with open(filename_error_32) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_32 = []
	error_32 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_error_32.append(int(lines[i].split()[0]))
			error_32.append(float(lines[i].split()[1]))
	with open(filename_error_64) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_64 = []
	error_64 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_error_64.append(int(lines[i].split()[0]))
			error_64.append(float(lines[i].split()[1]))
except IOError as e:
	print("Error opening data files.")
	exit()

try:
	with open(filename_res_1) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_res_1 = []
	res_1 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_res_1.append(int(lines[i].split()[0]))
			res_1.append(float(lines[i].split()[1]))
	with open(filename_res_2) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_res_2 = []
	res_2 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_res_2.append(int(lines[i].split()[0]))
			res_2.append(float(lines[i].split()[1]))
	with open(filename_res_4) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_res_4 = []
	res_4 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_res_4.append(int(lines[i].split()[0]))
			res_4.append(float(lines[i].split()[1]))
	with open(filename_res_8) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_res_8 = []
	res_8 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_res_8.append(int(lines[i].split()[0]))
			res_8.append(float(lines[i].split()[1]))
	with open(filename_res_16) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_res_16 = []
	res_16 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_res_16.append(int(lines[i].split()[0]))
			res_16.append(float(lines[i].split()[1]))
	with open(filename_res_32) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_res_32 = []
	res_32 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_res_32.append(int(lines[i].split()[0]))
			res_32.append(float(lines[i].split()[1]))
	with open(filename_res_64) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_res_64 = []
	res_64 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_res_64.append(int(lines[i].split()[0]))
			res_64.append(float(lines[i].split()[1]))
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

fig = plt.figure(figsize=(10,7))

plt.plot(it_error_1, error_1, color='grey', label=r'$q = 1$')
plt.plot(it_error_2, error_2, color='orange', label=r'$q = 2$')
plt.plot(it_error_4, error_4, color='red', label=r'$q = 4$')
plt.plot(it_error_8, error_8, color='magenta', label=r'$q = 8$')
plt.plot(it_error_16, error_16, color='purple', label=r'$q = 16$')
plt.plot(it_error_32, error_32, color='blue', label=r'$q = 32$')
plt.plot(it_error_64, error_64, color='black', label=r'$q = 64$')

plt.scatter(it_error_1[error_1.index(min(error_1))], min(error_1), color='grey')
plt.scatter(it_error_2[error_2.index(min(error_2))], min(error_2), color='orange')
plt.scatter(it_error_4[error_4.index(min(error_4))], min(error_4), color='red')
plt.scatter(it_error_8[error_8.index(min(error_8))], min(error_8), color='magenta')
plt.scatter(it_error_16[error_16.index(min(error_16))], min(error_16), color='purple')
plt.scatter(it_error_32[error_32.index(min(error_32))], min(error_32), color='blue')
plt.scatter(it_error_64[error_64.index(min(error_64))], min(error_64), color='black')

print(it_error_1[error_1.index(min(error_1))], end=' ')
print(min(error_1))
print(it_error_2[error_2.index(min(error_2))], end=' ')
print(min(error_2))
print(it_error_4[error_4.index(min(error_4))], end=' ')
print(min(error_4))
print(it_error_8[error_8.index(min(error_8))], end=' ')
print(min(error_8))
print(it_error_16[error_16.index(min(error_16))], end=' ')
print(min(error_16))
print(it_error_32[error_32.index(min(error_32))], end=' ')
print(min(error_32))
print(it_error_64[error_64.index(min(error_64))], end=' ')
print(min(error_64))

plt.grid()
plt.yscale('log')

plt.xlabel(r'Iteration')
plt.ylabel(r'$\|x^{(k)}-\overline{x}\|$')

plt.legend(loc='best')

plt.show()
fig.savefig("plots/omp_sparse/pdf"+output_foler+filename_fig_error+".pdf", bbox_inches='tight')
fig.savefig("plots/omp_sparse/png"+output_foler+filename_fig_error+".png", bbox_inches='tight')
plt.close()

fig = plt.figure(figsize=(10,7))

plt.plot(it_res_1, res_1, color='grey', label=r'$q = 1$')
plt.plot(it_res_2, res_2, color='orange', label=r'$q = 2$')
plt.plot(it_res_4, res_4, color='red', label=r'$q = 4$')
plt.plot(it_res_8, res_8, color='magenta', label=r'$q = 8$')
plt.plot(it_res_16, res_16, color='purple', label=r'$q = 16$')
plt.plot(it_res_32, res_32, color='blue', label=r'$q = 32$')
plt.plot(it_res_64, res_64, color='black', label=r'$q = 64$')

# print(it_res_1[res_1.index(min(res_1))], end=' ')
# print(min(res_1))
# print(it_res_2[res_2.index(min(res_2))], end=' ')
# print(min(res_2))
# print(it_res_4[res_4.index(min(res_4))], end=' ')
# print(min(res_4))
# print(it_res_8[res_8.index(min(res_8))], end=' ')
# print(min(res_8))
# print(it_res_16[res_16.index(min(res_16))], end=' ')
# print(min(res_16))
# print(it_res_32[res_32.index(min(res_32))], end=' ')
# print(min(res_32))
# print(it_res_64[res_64.index(min(res_64))], end=' ')
# print(min(res_64))

plt.grid()
plt.yscale('log')

plt.xlabel(r'Iteration')
plt.ylabel(r'$\|A x^{(k)}-b\|$')

plt.legend(loc='best')

plt.show()
fig.savefig("plots/omp_sparse/pdf"+output_foler+filename_fig_res+".pdf", bbox_inches='tight')
fig.savefig("plots/omp_sparse/png"+output_foler+filename_fig_res+".png", bbox_inches='tight')
plt.close()