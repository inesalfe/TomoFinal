%% Reset

% nohup matlab -nodisplay -nosplash -singleCompThread -batch "run('gen_ct_gaussian_huge.m'); exit" > output2.log 2>&1 &

clc;
clear;

addpath('AIRToolsII/')
AIRToolsII_setup('temporary')

%% Save

N = 512;
theta_inc = 0.5;
theta = 0:theta_inc:179.5;

p = round(sqrt(2)*N);
p = 4*p;
d = p-1;

seed = 2;
eta = 0.002;
save_sparse_ct_gaussian_huge(N,theta,p,d,seed,eta);

seed = 3;
eta = 0.004;
save_sparse_ct_gaussian_huge(N,theta,p,d,seed,eta);

seed = 2;
eta = 0.002;
save_sparse_ct_gaussian_huge(N,theta,p,d/2,seed,eta);

seed = 3;
eta = 0.004;
save_sparse_ct_gaussian_huge(N,theta,p,d/2,seed,eta);

seed = 2;
eta = 0.002;
save_sparse_ct_gaussian_huge(N,theta,p,d/4,seed,eta);

seed = 3;
eta = 0.004;
save_sparse_ct_gaussian_huge(N,theta,p,d/4,seed,eta);

seed = 2;
eta = 0.002;
save_sparse_ct_gaussian_huge(N,theta,p,2*d,seed,eta);

seed = 3;
eta = 0.004;
save_sparse_ct_gaussian_huge(N,theta,p,2*d,seed,eta);