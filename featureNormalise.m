function [X_norm, mu, sigma] = featureNormalise(X)
%   returns a normalised version of X where mean = 0 and std = 1
%   also returns mean and std of dataset

X_norm = X;

mu = mean(X);
sigma = std(X);
m = size(X, 1);
 
mu_matrix = ones(m,1) * mu; % create matrix size (mxn) with entries = mean of corresponding X column
sigma_matrix = ones(m,1) * sigma; % create matrix size (mxn) with entries = std of corresponding X column

X_norm = X - mu_matrix;
X_norm = X_norm ./ sigma_matrix;

end
