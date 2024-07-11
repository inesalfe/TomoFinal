import numpy as np
import matplotlib.pyplot as plt
from matplotlib.pyplot import gca
import matplotlib.font_manager
import sys

# python3 plots/seq_sparse/hist_row_norms.py ct_gaussian 19558 16384 2

if (len(sys.argv) != 4 and len(sys.argv) != 5):
    print("Incorrect number of arguments.")
    exit()

data_set = sys.argv[1]
M = int(sys.argv[2])
N = int(sys.argv[3])

if (data_set == "ct"):
    norms_folder = "outputs/seq_sparse/ct/RowNorms_"
    output_foler = "/"
    filename_norm = norms_folder + str(M) + "_" + str(N) + ".txt"
    filename_fig = str(M) + "_" + str(N)
elif (data_set == "ct_gaussian"):
    seed = int(sys.argv[4])
    norms_folder = "outputs/seq_sparse/ct_gaussian/RowNorms_"
    output_foler = "_gaussian/"
    filename_norm = norms_folder + str(M) + "_" + str(N) + "_" + str(seed) + ".txt"
    filename_fig = str(M) + "_" + str(N) + "_" + str(seed)
elif (data_set == "ct_poisson"):
    seed = int(sys.argv[4])
    norms_folder = "outputs/seq_sparse/ct_poisson/RowNorms_"
    output_foler = "_poisson/"
    filename_norm = norms_folder + str(M) + "_" + str(N) + "_" + str(seed) + ".txt"
    filename_fig = str(M) + "_" + str(N) + "_" + str(seed)
else:
    print("Error opening data files.")
    exit()

try:
    print(filename_norm)
    with open(filename_norm) as f:
        lines = f.read().splitlines()
    file_size = len(lines)
    norms = np.zeros(file_size)
    for i in range(file_size):
        norms[i] = float(lines[i])
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

plot_title = str(M) + r" $\times$ " + str(N)

fig = plt.figure(figsize=(8, 6))
n_bins = 9
plt.hist(norms, bins=n_bins, color='grey', alpha=0.3)
plt.hist(norms, bins=n_bins, color='grey', edgecolor='black', fc='None', lw=3)
plt.grid()
plt.title(plot_title)
plt.ylabel(r'Count')
# plt.yscale('log')
plt.xlabel(r'Norm')

plt.show()
fig.savefig("plots/seq_sparse/pdf"+output_foler+filename_fig+".pdf", bbox_inches='tight')
fig.savefig("plots/seq_sparse/png"+output_foler+filename_fig+".png", bbox_inches='tight')