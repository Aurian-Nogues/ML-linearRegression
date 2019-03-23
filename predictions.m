
%%======= predict house price based on training data set using gradient descent and normal equations ========%%

%%======= load data ========%%

%   data_set: data_houses.txt
%       size(sqft) / number of rooms / price (usd)

fprintf('Loading data... \n')
data = load('Data_houses.txt');
   
%%====== defines matrices and variables ========%%

fprintf('Defining matrices and variables... \n');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);

%%====== scale features (0 mean / 1 standard deviation) ========%%

fprintf('Normalising features...\n');
[X mu sigma] = featureNormalise(X);

% add intercept term to X
X = [ones(m,1) X];

%%====== gradient descent ========%%

%define parameters
alpha = 0.1;
num_iters = 50;
theta = zeros(size(X)(2), 1);

fprintf('Running gradient descent... \n');
[theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters);

%%====== plot convergence graph ========%%
fprintf('Plotting convergence graph... \n');
figure; %initiate a plot
plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost J');

%%===== calculate house price using gradient descent ========%%

area = input("Input house area (sqft) >>");
bedrooms = input("Inut number of bedrooms >>");

% normalise features
norm_area = (area - mu(1)) / (sigma(1));
norm_bedrooms = (bedrooms - mu(2)) / (sigma(2));

price = theta(1) + norm_area * theta(2) + norm_bedrooms * theta(3);

fprintf('\n')
fprintf('Predicted house price using gradient descent: \n $%f \n', price);

% ====== test case ========

% area = 1650, bedrooms = 3
% price should be 292748.08

%==========================

%%===== calculate house price solving with normal equations ========%%

fprintf('\n');
fprintf('Solving with normal equations... \n');

data = csvread('Data_houses.txt');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);

% Add intercept term to X
X = [ones(m, 1) X];

% Calculate the parameters from the normal equation
theta = normalEqn(X, y);

price = theta(1) + theta(2) * area + theta(3) * bedrooms;

fprintf('\n')
fprintf('Predicted house price using normal equations: \n $%f \n', price);

% ====== test case ========

% area = 1650, bedrooms = 3
% price should be 293081.46

%==========================
