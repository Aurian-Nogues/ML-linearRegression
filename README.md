#machine learning: linear regression

This is a machine learning algorithm for Octave / Matlab to perform a house price prediction using a linear regression algorithm.

This algorithms predicts price using gradient descent and normal equation based on two features: area and number of bedrooms.

Data_houses.txt contains the training data set with labels as following: area(sqm) / number of bedrooms / price

computeCost.m is a function that takes arguments X = features matrix, y = prices vector, theta = tested theta vector. It returns J = cost of using Theta vector.

FeatureNormalise.m is a function that transforms a matrix X into a normalised matrix X_norm of mean 0 and std 1. It takes X as an input and returns X_norm = normalised matrix, mu = mean normalisation factor and sigma = standard deviation normalisation factor.

gradientDescent.m is a function that performs a gradient descent. It takes arguments X = training set features, y = training set results, theta = initial theta vector, alpha = scaling factor, num_iters = number of iterations. It returns theta = computed theta vector and J_history which is a vector containing the errors after each iteration.

normalEqn.m is a function that calculates theta using the normal equations method. It takes arguments X = training set features and y = training set prices vector. It returns a vector containing calculated theta values.

predictions.m is a script that loads a training set and returns gradient descent and normal equation based price predictions.
The features used for this prediction (area and number of bedrooms) is a user input requested after the script starts.



