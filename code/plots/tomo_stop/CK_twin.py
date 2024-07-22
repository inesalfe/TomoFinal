import numpy as np
import matplotlib
# matplotlib.use('Agg')
import matplotlib.pyplot as plt
from matplotlib.pyplot import gca
import matplotlib.font_manager
import sys

# python3 plots/tomo_stop/CK_twin.py ct_gaussian 19558 16384 30000000 2

# 508509 2.14486
# 510001 4.18527
# 2440001 3.63971
# 2679447 3.51114

if (len(sys.argv) != 5 and len(sys.argv) != 6):
	print("Incorrect number of arguments.")
	exit()

data_set = sys.argv[1]
M = int(sys.argv[2])
N = int(sys.argv[3])
max_it = int(sys.argv[4])

if (data_set == "ct"):
	output_folder = "/"
	filename_error = "errors/seq_sparse/ct/CK_error_" + str(M) + "_" + str(N) + "_" + str(max_it) + ".txt"
	filename_error_twin = "errors/tomo_stop/ct/CK_twin_error_" + str(M) + "_" + str(N) + "_" + str(max_it) + ".txt"
	filename_gauge = "errors/tomo_stop/ct/CK_twin_gauge_" + str(M) + "_" + str(N) + "_" + str(max_it) + ".txt"
	filename_fig = "CK_twin_" + str(M) + "_" + str(N) + "_" + str(max_it)
elif (data_set == "ct_gaussian"):
	seed = int(sys.argv[5])
	output_folder = "_gaussian/"
	filename_error = "errors/seq_sparse/ct_gaussian/CK_error_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_twin = "errors/tomo_stop/ct_gaussian/CK_twin_error_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge = "errors/tomo_stop/ct_gaussian/CK_twin_gauge_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_fig = "CK_twin_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed)
elif (data_set == "ct_poisson"):
	seed = int(sys.argv[5])
	output_folder = "_poisson/"
	filename_error = "errors/seq_sparse/ct_gaussian/CK_error_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_twin = "errors/tomo_stop/ct_gaussian/CK_twin_error_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge = "errors/tomo_stop/ct_gaussian/CK_twin_gauge_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_fig = "CK_twin_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed)
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
		curr_val = float(lines[i].split()[1])
		if (curr_it < max_it and curr_val > 0):
			it_error.append(int(lines[i].split()[0]))
			error.append(float(lines[i].split()[1]))
except IOError as e:
	print("Error opening data files.")
	exit()

try:
	with open(filename_gauge) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_gauge = []
	gauge = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		curr_val = float(lines[i].split()[1])
		if (curr_it > 1 and curr_it < max_it and curr_val > 0):
			it_gauge.append(int(lines[i].split()[0]))
			gauge.append(float(lines[i].split()[1]))
except IOError as e:
	print("Error opening data files.")
	exit()

try:
	with open(filename_error_twin) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_twin = []
	error_twin = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		curr_val = float(lines[i].split()[1])
		if (curr_it < max_it and curr_val > 0):
			it_error_twin.append(int(lines[i].split()[0]))
			error_twin.append(float(lines[i].split()[1]))
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

ax1.plot(it_gauge, gauge, color='blue', label=r'$\|x^{up}-x^{down}\|$')
ax1.set_ylabel("Error Gauge", color="blue")

ax1.scatter(it_gauge[gauge.index(min(gauge))], min(gauge), color='blue', label=r'Minimum - $\|x^{up}-x^{down}\|$')
print(it_gauge[gauge.index(min(gauge))], end=' ')
print(min(gauge))

closest_val = min(it_error, key=lambda x:abs(x-it_gauge[gauge.index(min(gauge))]))
it_min_gauge = it_error[it_error.index(closest_val)]
find_index_it_error = it_error.index(it_min_gauge)

print(it_error[find_index_it_error], end=' ')
print(error[find_index_it_error])

ax1.set_xlabel(r'Iterations')
plt.grid()
ax2 = ax1.twinx()
ax2.set_ylabel("Error", color="red")
ax1.set_yscale('log')
ax2.set_yscale('log')

ax2.plot(it_error, error, color='red', label=r'$\|x^{(k)}-\overline{x}\|$')
ax2.plot(it_error_twin, error_twin, color='purple', label=r'$\|\frac{1}{2}(x^{up}+x^{down})-\overline{x}\|$')

ax2.scatter(it_error[error.index(min(error))], min(error), color='red', label=r'Minimum - $\|x^{(k)}-\overline{x}\|$')
print(it_error[error.index(min(error))], end=' ')
print(min(error))

ax2.scatter(it_error_twin[error_twin.index(min(error_twin))], min(error_twin), color='purple', label=r'Minimum - $\|\frac{1}{2}(x^{up}+x^{down})-\overline{x}\|$')
print(it_error_twin[error_twin.index(min(error_twin))], end=' ')
print(min(error_twin))

lines, labels = ax1.get_legend_handles_labels()
lines2, labels2 = ax2.get_legend_handles_labels()
ax2.legend(lines + lines2, labels + labels2, loc='best')

plt.show()
fig.savefig("plots/tomo_stop/pdf"+output_folder+filename_fig+".pdf", bbox_inches='tight')
fig.savefig("plots/tomo_stop/png"+output_folder+filename_fig+".png", bbox_inches='tight')
# plt.close()