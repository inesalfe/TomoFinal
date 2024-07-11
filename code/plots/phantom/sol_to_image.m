%% Setup

clc;
clear;

addpath('../../../data/AIRToolsII/')
addpath('../../../data/')
AIRToolsII_setup('temporary')

%% Data

seed = 2;
max_it = 3600001;
M = 19558;
N = 16384;

%% Stopping Criteria Kaczmarz Solution

filename = "outputs/seq_sparse/ct_gaussian/CK_pos_proj_sol_" + int2str(M) + "_" + int2str(N) + "_" + int2str(max_it) + "_" + int2str(seed) + ".txt";
x_sol_CK_pos_proj = load(filename);

figure1 = figure(1);
imagesc(reshape(x_sol_CK_pos_proj,N_pixels,N_pixels))
colorbar
filename_fig = "png_gaussian/x_sol_CK_pos_proj_sol_" + int2str(M) + "_" + int2str(N) + "_" + int2str(max_it) + "_" + int2str(seed) + ".png";
saveas(figure1,filename_fig);