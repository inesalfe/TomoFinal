%% Setup

clc;
clear;

addpath('../../../data/AIRToolsII/')
addpath('../../../data/')
AIRToolsII_setup('temporary')

N_pixels = 128;
theta_inc = 1.5;
theta = 0:theta_inc:178.5;
seed = 2;
eta = 0.002;
M = 19558;
N = 16384;

%% CKA Solutions

it_max_CKA_atomic_2 = 3820001;
filename = "../../outputs/omp_sparse/ct_gaussian/CKA_atomic_sol_" + int2str(M) + "_" + int2str(N) + "_2_" + int2str(it_max_CKA_atomic_2) + "_" + int2str(seed) + ".txt";
x_sol_CKA_atomic_2 = load(filename);

it_max_CKA_no_sync_2 = 4700000;
filename = "../../outputs/omp_sparse/ct_gaussian/CKA_no_sync_sol_" + int2str(M) + "_" + int2str(N) + "_2_" + int2str(it_max_CKA_no_sync_2) + "_" + int2str(seed) + ".txt";
x_sol_CKA_no_sync_2 = load(filename);

it_max_CKA_atomic_4 = 5040001;
filename = "../../outputs/omp_sparse/ct_gaussian/CKA_atomic_sol_" + int2str(M) + "_" + int2str(N) + "_4_" + int2str(it_max_CKA_atomic_4) + "_" + int2str(seed) + ".txt";
x_sol_CKA_atomic_4 = load(filename);

it_max_CKA_no_sync_4 = 5600000;
filename = "../../outputs/omp_sparse/ct_gaussian/CKA_no_sync_sol_" + int2str(M) + "_" + int2str(N) + "_4_" + int2str(it_max_CKA_no_sync_4) + "_" + int2str(seed) + ".txt";
x_sol_CKA_no_sync_4 = load(filename);

it_max_CKA_dist_atomic_2 = 3680001;
filename = "../../outputs/omp_sparse/ct_gaussian/CKA_dist_atomic_sol_" + int2str(M) + "_" + int2str(N) + "_2_" + int2str(it_max_CKA_dist_atomic_2) + "_" + int2str(seed) + ".txt";
x_sol_CKA_dist_atomic_2 = load(filename);

it_max_CKA_dist_no_sync_2 = 4550000;
filename = "../../outputs/omp_sparse/ct_gaussian/CKA_dist_no_sync_sol_" + int2str(M) + "_" + int2str(N) + "_2_" + int2str(it_max_CKA_dist_no_sync_2) + "_" + int2str(seed) + ".txt";
x_sol_CKA_dist_no_sync_2 = load(filename);

it_max_CKA_dist_atomic_4 = 5580001;
filename = "../../outputs/omp_sparse/ct_gaussian/CKA_dist_atomic_sol_" + int2str(M) + "_" + int2str(N) + "_4_" + int2str(it_max_CKA_dist_atomic_4) + "_" + int2str(seed) + ".txt";
x_sol_CKA_dist_atomic_4 = load(filename);

it_max_CKA_dist_no_sync_4 = 4650000;
filename = "../../outputs/omp_sparse/ct_gaussian/CKA_dist_no_sync_sol_" + int2str(M) + "_" + int2str(N) + "_4_" + int2str(it_max_CKA_dist_no_sync_4) + "_" + int2str(seed) + ".txt";
x_sol_CKA_dist_no_sync_4 = load(filename);
%%

min_list = [min(x_sol_CKA_atomic_2), min(x_sol_CKA_no_sync_2), min(x_sol_CKA_atomic_4), min(x_sol_CKA_no_sync_4), min(x_sol_CKA_dist_atomic_2), min(x_sol_CKA_dist_no_sync_2), min(x_sol_CKA_dist_atomic_4), min(x_sol_CKA_dist_no_sync_4)];
max_list = [max(x_sol_CKA_atomic_2), max(x_sol_CKA_no_sync_2), max(x_sol_CKA_atomic_4), max(x_sol_CKA_no_sync_4), max(x_sol_CKA_dist_atomic_2), max(x_sol_CKA_dist_no_sync_2), max(x_sol_CKA_dist_atomic_4), max(x_sol_CKA_dist_no_sync_4)];

min_val = min(min_list);
max_val = min(max_list);

%%

figure1 = figure(1);
imagesc(reshape(x_sol_CKA_atomic_2,N_pixels,N_pixels))
colorbar
caxis manual
caxis([min_val max_val])
filename_fig = "png_gaussian/CKA_atomic_" + int2str(M) + "_" + int2str(N) + "_2_" + int2str(it_max_CKA_atomic_2) + "_" + int2str(seed) + ".png";
saveas(figure1,filename_fig);

figure2 = figure(2);
imagesc(reshape(x_sol_CKA_no_sync_2,N_pixels,N_pixels))
colorbar
caxis manual
caxis([min_val max_val])
filename_fig = "png_gaussian/CKA_no_sync_" + int2str(M) + "_" + int2str(N) + "_2_" + int2str(it_max_CKA_no_sync_2) + "_" + int2str(seed) + ".png";
saveas(figure2,filename_fig);

figure3 = figure(3);
imagesc(reshape(x_sol_CKA_atomic_4,N_pixels,N_pixels))
colorbar
caxis manual
caxis([min_val max_val])
filename_fig = "png_gaussian/CKA_atomic_" + int2str(M) + "_" + int2str(N) + "_4_" + int2str(it_max_CKA_atomic_4) + "_" + int2str(seed) + ".png";
saveas(figure3,filename_fig);

figure4 = figure(4);
imagesc(reshape(x_sol_CKA_no_sync_4,N_pixels,N_pixels))
colorbar
caxis manual
caxis([min_val max_val])
filename_fig = "png_gaussian/CKA_no_sync_" + int2str(M) + "_" + int2str(N) + "_4_" + int2str(it_max_CKA_no_sync_4) + "_" + int2str(seed) + ".png";
saveas(figure4,filename_fig);

figure5 = figure(5);
imagesc(reshape(x_sol_CKA_dist_atomic_2,N_pixels,N_pixels))
colorbar
caxis manual
caxis([min_val max_val])
filename_fig = "png_gaussian/CKA_dist_atomic_" + int2str(M) + "_" + int2str(N) + "_2_" + int2str(it_max_CKA_dist_atomic_2) + "_" + int2str(seed) + ".png";
saveas(figure5,filename_fig);

figure6 = figure(6);
imagesc(reshape(x_sol_CKA_dist_no_sync_2,N_pixels,N_pixels))
colorbar
caxis manual
caxis([min_val max_val])
filename_fig = "png_gaussian/CKA_dist_no_sync_" + int2str(M) + "_" + int2str(N) + "_2_" + int2str(it_max_CKA_dist_no_sync_2) + "_" + int2str(seed) + ".png";
saveas(figure6,filename_fig);

figure7 = figure(7);
imagesc(reshape(x_sol_CKA_dist_atomic_4,N_pixels,N_pixels))
colorbar
caxis manual
caxis([min_val max_val])
filename_fig = "png_gaussian/CKA_dist_atomic_" + int2str(M) + "_" + int2str(N) + "_4_" + int2str(it_max_CKA_dist_atomic_4) + "_" + int2str(seed) + ".png";
saveas(figure7,filename_fig);

figure8 = figure(8);
imagesc(reshape(x_sol_CKA_dist_no_sync_4,N_pixels,N_pixels))
colorbar
caxis manual
caxis([min_val max_val])
filename_fig = "png_gaussian/CKA_dist_no_sync_" + int2str(M) + "_" + int2str(N) + "_4_" + int2str(it_max_CKA_dist_no_sync_4) + "_" + int2str(seed) + ".png";
saveas(figure8,filename_fig);