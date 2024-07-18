%% Setup

% nohup matlab -nodisplay -nosplash -singleCompThread -batch "run('fbp_time_hd_2.m'); exit" > output7_3.log 2>&1 &

clc;
clear;

addpath('AIRToolsII/')
AIRToolsII_setup('temporary')

% Params

N_pixels = 512;
theta_inc = 0.5;
theta = 0:theta_inc:179.5;
seed = 2;
eta = 0.002;

% p

p = round(sqrt(2)*N_pixels);
d = p-1;

[A,b,x] = paralleltomo(N_pixels,theta,p,d);
norm(x, 2)*norm(x, 2)

x_sol_fbp = fbp_sol(N_pixels,theta,p,d,seed,eta);
norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)

filename_fbp = "ct_gaussian/x_fbp_hd_" + int2str(N_pixels) + "_" + int2str(p) + ".bin";
file_fbp = fopen(filename_fbp,'w');
fwrite(file_fbp, x_sol_fbp, 'double');
fclose(file_fbp);

% x_sol_fbp_box_proj = normalize(x_sol_fbp,'range');
% norm(x_sol_fbp_box_proj-x, 2)*norm(x_sol_fbp_box_proj-x, 2)

% filename_fbp = "ct_gaussian/x_fbp_hd_box_proj_" + int2str(N_pixels) + "_" + int2str(p) + ".bin";
% file_fbp = fopen(filename_fbp,'w');
% fwrite(file_fbp, x_sol_fbp_box_proj, 'double');
% fclose(file_fbp);

% 2*p

p = 2*round(sqrt(2)*N_pixels);
d = p-1;

[A,b,x] = paralleltomo(N_pixels,theta,p,d);
norm(x, 2)*norm(x, 2)

x_sol_fbp = fbp_sol(N_pixels,theta,p,d,seed,eta);
norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)

filename_fbp = "ct_gaussian/x_fbp_hd_" + int2str(N_pixels) + "_" + int2str(p) + ".bin";
file_fbp = fopen(filename_fbp,'w');
fwrite(file_fbp, x_sol_fbp, 'double');
fclose(file_fbp);

% x_sol_fbp_box_proj = normalize(x_sol_fbp,'range');
% norm(x_sol_fbp_box_proj-x, 2)*norm(x_sol_fbp_box_proj-x, 2)

% filename_fbp = "ct_gaussian/x_fbp_hd_box_proj_" + int2str(N_pixels) + "_" + int2str(p) + ".bin";
% file_fbp = fopen(filename_fbp,'w');
% fwrite(file_fbp, x_sol_fbp_box_proj, 'double');
% fclose(file_fbp);

% 4*p

p = 4*round(sqrt(2)*N_pixels);
d = p-1;

[A,b,x] = paralleltomo(N_pixels,theta,p,d);
norm(x, 2)*norm(x, 2)

x_sol_fbp = fbp_sol(N_pixels,theta,p,d,seed,eta);
norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)

filename_fbp = "ct_gaussian/x_fbp_hd_" + int2str(N_pixels) + "_" + int2str(p) + ".bin";
file_fbp = fopen(filename_fbp,'w');
fwrite(file_fbp, x_sol_fbp, 'double');
fclose(file_fbp);

% x_sol_fbp_box_proj = normalize(x_sol_fbp,'range');
% norm(x_sol_fbp_box_proj-x, 2)*norm(x_sol_fbp_box_proj-x, 2)

% filename_fbp = "ct_gaussian/x_fbp_hd_box_proj_" + int2str(N_pixels) + "_" + int2str(p) + ".bin";
% file_fbp = fopen(filename_fbp,'w');
% fwrite(file_fbp, x_sol_fbp_box_proj, 'double');
% fclose(file_fbp);

% 8*p

p = 8*round(sqrt(2)*N_pixels);
d = p-1;

[A,b,x] = paralleltomo(N_pixels,theta,p,d);
norm(x, 2)*norm(x, 2)

x_sol_fbp = fbp_sol(N_pixels,theta,p,d,seed,eta);
norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)

filename_fbp = "ct_gaussian/x_fbp_hd_" + int2str(N_pixels) + "_" + int2str(p) + ".bin";
file_fbp = fopen(filename_fbp,'w');
fwrite(file_fbp, x_sol_fbp, 'double');
fclose(file_fbp);

% x_sol_fbp_box_proj = normalize(x_sol_fbp,'range');
% norm(x_sol_fbp_box_proj-x, 2)*norm(x_sol_fbp_box_proj-x, 2)

% filename_fbp = "ct_gaussian/x_fbp_hd_box_proj_" + int2str(N_pixels) + "_" + int2str(p) + ".bin";
% file_fbp = fopen(filename_fbp,'w');
% fwrite(file_fbp, x_sol_fbp_box_proj, 'double');
% fclose(file_fbp);

% 16*p

p = 16*round(sqrt(2)*N_pixels);
d = p-1;

[A,b,x] = paralleltomo(N_pixels,theta,p,d);
norm(x, 2)*norm(x, 2)

x_sol_fbp = fbp_sol(N_pixels,theta,p,d,seed,eta);
norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)

filename_fbp = "ct_gaussian/x_fbp_hd_" + int2str(N_pixels) + "_" + int2str(p) + ".bin";
file_fbp = fopen(filename_fbp,'w');
fwrite(file_fbp, x_sol_fbp, 'double');
fclose(file_fbp);

% x_sol_fbp_box_proj = normalize(x_sol_fbp,'range');
% norm(x_sol_fbp_box_proj-x, 2)*norm(x_sol_fbp_box_proj-x, 2)

% filename_fbp = "ct_gaussian/x_fbp_hd_box_proj_" + int2str(N_pixels) + "_" + int2str(p) + ".bin";
% file_fbp = fopen(filename_fbp,'w');
% fwrite(file_fbp, x_sol_fbp_box_proj, 'double');
% fclose(file_fbp);