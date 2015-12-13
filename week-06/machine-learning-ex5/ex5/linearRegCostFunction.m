function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%


% size(X)      % = 12 * 2 vector
% size(y)      % = 12 * 1 vector
% size(theta)  % = 2 * 1  vector
% size(lambda) % = scalar




% Calculate cost

predictions = X * theta; % 12 * 1 vector

squareErrors = (predictions - y) .^ 2; % 12 * 1 vector

firstThetaZero = theta; % 2 * 1 vector
firstThetaZero(1) = 0;

reg = (lambda / (2 * m) * sum (firstThetaZero.^2)); % scalar

J = (1 / (2 * m) * sum(squareErrors)) + reg; % scalar


% Calculate gradient

reg = (lambda / m) * firstThetaZero; % 2 * 1 vector

grad = (1 / m) * (X' * (predictions - y)) + reg; % 2 * 1 vector







% =========================================================================

grad = grad(:);

end
