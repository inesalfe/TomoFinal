import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from matplotlib.pyplot import gca
import matplotlib.font_manager
import sys

# python3 plots/seq_sparse/CK_pos_proj.py ct_gaussian 19558 16384 30000000 2

if (len(sys.argv) != 5 and len(sys.argv) != 6):
	print("Incorrect number of arguments.")
	exit()

data_set = sys.argv[1]
M = int(sys.argv[2])
N = int(sys.argv[3])
max_it = int(sys.argv[4])

if (data_set == "ct"):
	error_folder = "errors/seq_sparse/ct/"
	output_foler = "/"
	filename_error = error_folder + "CK_pos_proj_error_" + str(M) + "_" + str(N) + "_" + str(max_it) + ".txt"
	filename_res = error_folder + "CK_pos_proj_res_" + str(M) + "_" + str(N) + "_" + str(max_it) + ".txt"
	filename_fig = "CK_pos_proj_" + str(M) + "_" + str(N) + "_" + str(max_it)
elif (data_set == "ct_gaussian"):
	seed = int(sys.argv[5])
	error_folder = "errors/seq_sparse/ct_gaussian/"
	output_foler = "_gaussian/"
	filename_error = error_folder + "CK_pos_proj_error_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res = error_folder + "CK_pos_proj_res_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_fig = "CK_pos_proj_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed)
elif (data_set == "ct_poisson"):
	seed = int(sys.argv[5])
	error_folder = "errors/seq_sparse/ct_poisson/"
	output_foler = "_poisson/"
	filename_error = error_folder + "CK_pos_proj_error_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res = error_folder + "CK_pos_proj_res_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_fig = "CK_pos_proj_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed)
else:
	print("Error opening data files.")
	exit()

try:
	with open(filename_error) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error = []
	error = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_error.append(int(lines[i].split()[0]))
			error.append(float(lines[i].split()[1]))
except IOError as e:
	print("Error opening data files.")
	exit()

try:
	with open(filename_res) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_res = []
	res = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_res.append(int(lines[i].split()[0]))
			res.append(float(lines[i].split()[1]))
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

ax1.plot(it_res, res, color='blue', label=r'$\|Ax^{(k)}-b\|$')
ax1.set_ylabel("Residual", color="blue")

ax1.set_xlabel(r'Iterations')
plt.grid()
ax2 = ax1.twinx()
ax2.set_ylabel("Error", color="red")
ax1.set_yscale('log')
ax2.set_yscale('log')

ax2.plot(it_error, error, color='red', label=r'$\|x^{(k)}-\overline{x}\|$')

ax2.scatter(it_error[error.index(min(error))], min(error), color='red', label=r'Minimum - $\|x^{(k)}-\overline{x}\|$')
print(it_error[error.index(min(error))], end=' ')
print(min(error))

lines, labels = ax1.get_legend_handles_labels()
lines2, labels2 = ax2.get_legend_handles_labels()
ax2.legend(lines + lines2, labels + labels2, loc='best')

# plt.show()
fig.savefig("plots/seq_sparse/pdf"+output_foler+filename_fig+".pdf", bbox_inches='tight')
fig.savefig("plots/seq_sparse/png"+output_foler+filename_fig+".png", bbox_inches='tight')
plt.close()