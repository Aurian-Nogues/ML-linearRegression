function J = computeCost(X, y, theta)
%   computes the cost for a set of theta

m = length (y); %number of training exemples
J = 0;

%hypothesis vector (m x 1) = X(m x n) * theta (n x 1)
h = X * theta;
%errors vector (m x 1) = hypothesis vector(m x 1) - y(m x 1) vector
e = h - y;
J = 1/(2*m) * sum(e.^2);
end


%===================== test cases ==================
%>>computeCost( [1 2; 1 3; 1 4; 1 5], [7;6;5;4], [0.1;0.2] )
%ans = 11.9450

%computeCost( [1 2 3; 1 3 4; 1 4 5; 1 5 6], [7;6;5;4], [0.1;0.2;0.3])
%ans = 7.0175