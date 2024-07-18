function x_fbp = fbp_sol(N_pixels,theta,p,d,seed,eta,filter)

    if nargin < 7, filter = 'ram-lak'; end
    
    % Get System
    
    [A,b,x] = paralleltomo(N_pixels,theta,p,d);
    
    % x_init = x;
    
    M = size(A,1)
    N = size(A,2)
    
    % Error
    
    rng(seed);
    sigma = sqrt(eta*eta*norm(b)*norm(b)/M);
    error = nrmrnd(0,sigma,M,1);
    b_error = b + error;
    
    tic
    x_fbp = fbp(A,b_error,theta,filter);
    toc
    
    % figure_fbp = figure(1);
    % imagesc(reshape(x_fbp,N_pixels,N_pixels))
    % colorbar
    % caxis manual
    % % caxis([min_pixel max_pixel])

end