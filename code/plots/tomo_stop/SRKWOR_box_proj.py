import numpy as np
import matplotlib
# matplotlib.use('Agg')
import matplotlib.pyplot as plt
from matplotlib.pyplot import gca
import matplotlib.font_manager
import sys

# python3 plots/tomo_stop/SRKWOR_box_proj.py ct_gaussian 117372 262144 5000 2
# python3 plots/tomo_stop/SRKWOR_box_proj.py ct_gaussian 234664 262144 200 2
# python3 plots/tomo_stop/SRKWOR_box_proj.py ct_gaussian 469368 262144 100 2
# python3 plots/tomo_stop/SRKWOR_box_proj.py ct_gaussian 938720 262144 100 2

# Resultados para 3 corridas

# 4684 8.1474
# 677 7.93102

# 159 4.09178
# 46 3.76626

# 42 1.70752
# 22 1.70079

# 15 1.71555
# 10 1.71369

# python3 plots/tomo_stop/SRKWOR_box_proj.py ct_gaussian 117372 262144 10000 2
# python3 plots/tomo_stop/SRKWOR_box_proj.py ct_gaussian 234664 262144 500 2
# python3 plots/tomo_stop/SRKWOR_box_proj.py ct_gaussian 469368 262144 200 2
# python3 plots/tomo_stop/SRKWOR_box_proj.py ct_gaussian 938720 262144 100 2

# Resultados para 1 corrida




# 287 3.99511
# 58 3.03582

# 99 1.71733
# 23 1.68332

# 31 1.71178
# 11 1.70005

if (len(sys.argv) != 5 and len(sys.argv) != 6):
	print("Incorrect number of arguments.")
	exit()

data_set = sys.argv[1]
M = int(sys.argv[2])
N = int(sys.argv[3])
max_it = int(sys.argv[4])

if (data_set == "ct"):
	output_folder = "/"
	filename_error = "errors/tomo_stop/ct/SRKWOR_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(max_it) + ".txt"
	filename_gauge = "errors/tomo_stop/ct/SRKWOR_box_proj_gauge_" + str(M) + "_" + str(N) + "_" + str(max_it) + ".txt"
	filename_fig = "SRKWOR_box_proj_" + str(M) + "_" + str(N) + "_" + str(max_it)
elif (data_set == "ct_gaussian"):
	seed = int(sys.argv[5])
	output_folder = "_gaussian/"
	filename_error = "errors/tomo_stop/ct_gaussian/SRKWOR_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge = "errors/tomo_stop/ct_gaussian/SRKWOR_box_proj_gauge_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_fig = "SRKWOR_box_proj_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed)
elif (data_set == "ct_poisson"):
	seed = int(sys.argv[5])
	output_folder = "_poisson/"
	filename_error = "errors/tomo_stop/ct_gaussian/SRKWOR_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_gauge = "errors/tomo_stop/ct_gaussian/SRKWOR_box_proj_gauge_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_fig = "SRKWOR_box_proj_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed)
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
# print(it_gauge[gauge.index(min(gauge))], end=' ')
# print(min(gauge))

print(it_error[gauge.index(min(gauge))], end=' ')
print(error[gauge.index(min(gauge))])

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

plt.show()
fig.savefig("plots/tomo_stop/pdf"+output_folder+filename_fig+".pdf", bbox_inches='tight')
fig.savefig("plots/tomo_stop/png"+output_folder+filename_fig+".png", bbox_inches='tight')
# plt.close()