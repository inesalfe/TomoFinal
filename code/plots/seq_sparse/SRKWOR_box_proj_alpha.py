import numpy as np
import matplotlib
# matplotlib.use('Agg')
import matplotlib.pyplot as plt
from matplotlib.pyplot import gca
import matplotlib.font_manager
import sys

# python3 plots/seq_sparse/SRKWOR_box_proj_alpha.py ct_gaussian 19558 16384 30000000 2

# 12600001 0.624357
# 5520001 0.652478
# 3720001 0.682003
# 2390001 0.692348
# 1640001 0.708161
# 1150001 0.788398
# 1150001 0.94716

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
	error_folder = "errors/seq_sparse/ct/"
	output_foler = "/"
	filename_error_1 = error_folder + "SRKWOR_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_1) + "_" + str(max_it) + ".txt"
	filename_res_1 = error_folder + "SRKWOR_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_1) + "_" + str(max_it) + ".txt"
	filename_error_2 = error_folder + "SRKWOR_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_2) + "_" + str(max_it) + ".txt"
	filename_res_2 = error_folder + "SRKWOR_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_2) + "_" + str(max_it) + ".txt"
	filename_error_3 = error_folder + "SRKWOR_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_3) + "_" + str(max_it) + ".txt"
	filename_res_3 = error_folder + "SRKWOR_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_3) + "_" + str(max_it) + ".txt"
	filename_error_4 = error_folder + "SRKWOR_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_4) + "_" + str(max_it) + ".txt"
	filename_res_4 = error_folder + "SRKWOR_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_4) + "_" + str(max_it) + ".txt"
	filename_error_5 = error_folder + "SRKWOR_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_5) + "_" + str(max_it) + ".txt"
	filename_res_5 = error_folder + "SRKWOR_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_5) + "_" + str(max_it) + ".txt"
	filename_error_6 = error_folder + "SRKWOR_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_6) + "_" + str(max_it) + ".txt"
	filename_res_6= error_folder + "SRKWOR_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_6) + "_" + str(max_it) + ".txt"
	filename_error_7= error_folder + "SRKWOR_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_7) + "_" + str(max_it) + ".txt"
	filename_res_7= error_folder + "SRKWOR_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_7) + "_" + str(max_it) + ".txt"
	filename_fig_error = "SRKWOR_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(threads)
	filename_fig_res = "SRKWOR_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(threads)
elif (data_set == "ct_gaussian"):
	seed = int(sys.argv[5])
	error_folder = "errors/seq_sparse/ct_gaussian/"
	output_foler = "_gaussian/"
	filename_error_1 = error_folder + "SRKWOR_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_1) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_1 = error_folder + "SRKWOR_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_1) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_2 = error_folder + "SRKWOR_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_2) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_2 = error_folder + "SRKWOR_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_2) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_3 = error_folder + "SRKWOR_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_3) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_3 = error_folder + "SRKWOR_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_3) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_4 = error_folder + "SRKWOR_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_4) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_4 = error_folder + "SRKWOR_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_4) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_5 = error_folder + "SRKWOR_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_5) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_5 = error_folder + "SRKWOR_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_5) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_6= error_folder + "SRKWOR_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_6) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_6= error_folder + "SRKWOR_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_6) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_7= error_folder + "SRKWOR_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_7) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_7= error_folder + "SRKWOR_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_7) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_fig_error = "SRKWOR_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed)
	filename_fig_res = "SRKWOR_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed)
elif (data_set == "ct_poisson"):
	seed = int(sys.argv[5])
	error_folder = "errors/seq_sparse/ct_poisson/"
	output_foler = "_poisson/"
	filename_error_1 = error_folder + "SRKWOR_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_1) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_1 = error_folder + "SRKWOR_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_1) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_2 = error_folder + "SRKWOR_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_2) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_2 = error_folder + "SRKWOR_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_2) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_3 = error_folder + "SRKWOR_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_3) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_3 = error_folder + "SRKWOR_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_3) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_4 = error_folder + "SRKWOR_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_4) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_4 = error_folder + "SRKWOR_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_4) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_5 = error_folder + "SRKWOR_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_5) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_5 = error_folder + "SRKWOR_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_5) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_6= error_folder + "SRKWOR_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_6) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_6= error_folder + "SRKWOR_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_6) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_7= error_folder + "SRKWOR_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_7) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_7= error_folder + "SRKWOR_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_7) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_fig_error = "SRKWOR_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed)
	filename_fig_res = "SRKWOR_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed)
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
	with open(filename_error_3) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_3 = []
	error_3 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_error_3.append(int(lines[i].split()[0]))
			error_3.append(float(lines[i].split()[1]))
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
	with open(filename_error_5) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_5 = []
	error_5 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_error_5.append(int(lines[i].split()[0]))
			error_5.append(float(lines[i].split()[1]))
	with open(filename_error_6) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_6= []
	error_6= []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_error_6.append(int(lines[i].split()[0]))
			error_6.append(float(lines[i].split()[1]))
	with open(filename_error_7) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_7= []
	error_7= []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_error_7.append(int(lines[i].split()[0]))
			error_7.append(float(lines[i].split()[1]))
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
	with open(filename_res_3) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_res_3 = []
	res_3 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_res_3.append(int(lines[i].split()[0]))
			res_3.append(float(lines[i].split()[1]))
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
	with open(filename_res_5) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_res_5 = []
	res_5 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_res_5.append(int(lines[i].split()[0]))
			res_5.append(float(lines[i].split()[1]))
	with open(filename_res_6) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_res_6= []
	res_6= []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_res_6.append(int(lines[i].split()[0]))
			res_6.append(float(lines[i].split()[1]))
	with open(filename_res_7) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_res_7= []
	res_7= []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_res_7.append(int(lines[i].split()[0]))
			res_7.append(float(lines[i].split()[1]))
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

plt.plot(it_error_1, error_1, color='grey', label=r'$%s$'%alpha_1_string)
plt.plot(it_error_2, error_2, color='orange', label=r'$%s$'%alpha_2_string)
plt.plot(it_error_3, error_3, color='red', label=r'$%s$'%alpha_3_string)
plt.plot(it_error_4, error_4, color='magenta', label=r'$%s$'%alpha_4_string)
plt.plot(it_error_5, error_5, color='purple', label=r'$%s$'%alpha_5_string)
plt.plot(it_error_6, error_6, color='blue', label=r'$%s$'%alpha_6_string)
plt.plot(it_error_7, error_7, color='black', label=r'$%s$'%alpha_7_string)

plt.scatter(it_error_1[error_1.index(min(error_1))], min(error_1), color='grey')
plt.scatter(it_error_2[error_2.index(min(error_2))], min(error_2), color='orange')
plt.scatter(it_error_3[error_3.index(min(error_3))], min(error_3), color='red')
plt.scatter(it_error_4[error_4.index(min(error_4))], min(error_4), color='magenta')
plt.scatter(it_error_5[error_5.index(min(error_5))], min(error_5), color='purple')
plt.scatter(it_error_6[error_6.index(min(error_6))], min(error_6), color='blue')
plt.scatter(it_error_7[error_7.index(min(error_7))], min(error_7), color='black')

print(it_error_1[error_1.index(min(error_1))], end=' ')
print(min(error_1))
print(it_error_2[error_2.index(min(error_2))], end=' ')
print(min(error_2))
print(it_error_3[error_3.index(min(error_3))], end=' ')
print(min(error_3))
print(it_error_4[error_4.index(min(error_4))], end=' ')
print(min(error_4))
print(it_error_5[error_5.index(min(error_5))], end=' ')
print(min(error_5))
print(it_error_6[error_6.index(min(error_6))], end=' ')
print(min(error_6))
print(it_error_7[error_7.index(min(error_7))], end=' ')
print(min(error_7))

plt.grid()
plt.yscale('log')

plt.xlabel(r'Iteration')
plt.ylabel(r'$\|x^{(k)}-\overline{x}\|$')

plt.legend(loc='best')

plt.show()
fig.savefig("plots/seq_sparse/pdf"+output_foler+filename_fig_error+".pdf", bbox_inches='tight')
fig.savefig("plots/seq_sparse/png"+output_foler+filename_fig_error+".png", bbox_inches='tight')
plt.close()

fig = plt.figure(figsize=(10,7))

plt.plot(it_res_1, res_1, color='grey', label=r'$%s$'%alpha_1_string)
plt.plot(it_res_2, res_2, color='orange', label=r'$%s$'%alpha_2_string)
plt.plot(it_res_3, res_3, color='red', label=r'$%s$'%alpha_3_string)
plt.plot(it_res_4, res_4, color='magenta', label=r'$%s$'%alpha_4_string)
plt.plot(it_res_5, res_5, color='purple', label=r'$%s$'%alpha_5_string)
plt.plot(it_res_6, res_6, color='blue', label=r'$%s$'%alpha_6_string)
plt.plot(it_res_7, res_7, color='black', label=r'$%s$'%alpha_7_string)

plt.grid()
plt.yscale('log')

plt.xlabel(r'Iteration')
plt.ylabel(r'$\|A x^{(k)}-b\|$')

plt.legend(loc='best')

plt.show()
fig.savefig("plots/seq_sparse/pdf"+output_foler+filename_fig_res+".pdf", bbox_inches='tight')
fig.savefig("plots/seq_sparse/png"+output_foler+filename_fig_res+".png", bbox_inches='tight')
plt.close()