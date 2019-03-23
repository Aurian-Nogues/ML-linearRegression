function [theta, J_history] = gradientDescent (X, y, theta, alpha, num_iters)
% performs gradient descent to find theta

% intitalise values

m = length(y); %number of training exemples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    %theta = theta - alpha * delta
    %alpha is scaling facor, delta is change(gradient)

    %hypothesis vector (m x 1) = X(m x n) * theta (n x 1)
        h = X * theta;
    %errors vector (m x 1) = hypothesis vector(m x 1) - y(m x 1) vector
        e = h - y;
    
    %theta_change (gradient) = product of X and error vector scaled by alpha and 1/m.
    %becasue X is (mxn) and error vector is (m x 1) and result needs to be size of theta (nx1), need to transpose X
    %vector multiplication automatically includes calculating the sum of the products so no need to add like in iterative method

        theta_change = (X' * e) * 1/m;
        theta = theta - alpha * theta_change;

    % save the cost of J in every iteration
    J_history(iter) = computeCost(X, y, theta);
end

end

%=============== test case ==============================

% [theta J_hist] = gradientDescent([1 5; 1 2; 1 4; 1 5],[1 6 4 2]',[0 0]',0.01,1000);

%theta =
%    5.2148
%   -0.5733

%J_hist(1000)
%ans = 0.85426
%========================================================