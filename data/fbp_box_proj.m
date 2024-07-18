%% Setup

clc;
clear;

addpath('AIRToolsII/')
AIRToolsII_setup('temporary')

%% Data

N_pixels = 512;
theta_inc = 0.5;
theta = 0:theta_inc:179.5;
seed = 2;
eta = 0.002;

p = round(sqrt(2)*N_pixels);
p = 4*p;
d = p-1;

N = 262144;

%% System_1

M = 117372;

%% Original

filename = "ct_gaussian/x_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
fileID = fopen(filename);
x = fread(fileID,'double');

%% FPB

x_sol_fbp = fbp_sol(N_pixels,theta,p,2*d,seed,eta);
norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)

filename_fbp = "ct_gaussian/x_fbp_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
file_fbp = fopen(filename_fbp,'w');
fwrite(file_fbp, x_sol_fbp, 'double');
fclose(file_fbp);

for i=1:size(x_sol_fbp)
    if x_sol_fbp(i) > 1
        x_sol_fbp(i) = 1;
    elseif x_sol_fbp(i) < 0
        x_sol_fbp(i) = 0;
    end
end
norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)

filename_fbp = "ct_gaussian/x_fbp_box_proj_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
file_fbp = fopen(filename_fbp,'w');
fwrite(file_fbp, x_sol_fbp, 'double');
fclose(file_fbp);

%% System_2

M = 234664;

%% Original

filename = "ct_gaussian/x_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
fileID = fopen(filename);
x = fread(fileID,'double');

%% FPB

x_sol_fbp = fbp_sol(N_pixels,theta,p,d,seed,eta);
norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)

filename_fbp = "ct_gaussian/x_fbp_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
file_fbp = fopen(filename_fbp,'w');
fwrite(file_fbp, x_sol_fbp, 'double');
fclose(file_fbp);

for i=1:size(x_sol_fbp)
    if x_sol_fbp(i) > 1
        x_sol_fbp(i) = 1;
    elseif x_sol_fbp(i) < 0
        x_sol_fbp(i) = 0;
    end
end
norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)

filename_fbp = "ct_gaussian/x_fbp_box_proj_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
file_fbp = fopen(filename_fbp,'w');
fwrite(file_fbp, x_sol_fbp, 'double');
fclose(file_fbp);

%% System_3

M = 469368;

%% Original

filename = "ct_gaussian/x_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
fileID = fopen(filename);
x = fread(fileID,'double');

%% FPB

x_sol_fbp = fbp_sol(N_pixels,theta,p,d/2,seed,eta);
norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)

filename_fbp = "ct_gaussian/x_fbp_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
file_fbp = fopen(filename_fbp,'w');
fwrite(file_fbp, x_sol_fbp, 'double');
fclose(file_fbp);

for i=1:size(x_sol_fbp)
    if x_sol_fbp(i) > 1
        x_sol_fbp(i) = 1;
    elseif x_sol_fbp(i) < 0
        x_sol_fbp(i) = 0;
    end
end
norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)

filename_fbp = "ct_gaussian/x_fbp_box_proj_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
file_fbp = fopen(filename_fbp,'w');
fwrite(file_fbp, x_sol_fbp, 'double');
fclose(file_fbp);

%% System_4

M = 938720;

%% Original

filename = "ct_gaussian/x_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
fileID = fopen(filename);
x = fread(fileID,'double');

%% FPB

x_sol_fbp = fbp_sol(N_pixels,theta,p,d/4,seed,eta);
norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)

filename_fbp = "ct_gaussian/x_fbp_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
file_fbp = fopen(filename_fbp,'w');
fwrite(file_fbp, x_sol_fbp, 'double');
fclose(file_fbp);

for i=1:size(x_sol_fbp)
    if x_sol_fbp(i) > 1
        x_sol_fbp(i) = 1;
    elseif x_sol_fbp(i) < 0
        x_sol_fbp(i) = 0;
    end
end
norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)

filename_fbp = "ct_gaussian/x_fbp_box_proj_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
file_fbp = fopen(filename_fbp,'w');
fwrite(file_fbp, x_sol_fbp, 'double');
fclose(file_fbp);
