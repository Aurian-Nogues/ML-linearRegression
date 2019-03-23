function[theta] = normalEqn(X, y)
% solves theta for linear regression using normal equations

theta = zeros(size(X, 2), 1);
theta = pinv(X' * X) * X' * y;

end
