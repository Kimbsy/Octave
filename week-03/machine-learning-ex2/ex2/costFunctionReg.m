function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta



% get predictions matrix
predictions = X * theta;

% calculate logistic function based on value of y
logistic = ((-y) .* log(sigmoid(predictions))) - ((1 - y) .* (log(1 - sigmoid(predictions))));

firstThetaZero = theta;
firstThetaZero(1) = 0;

% sum
J = (1 / m * sum(logistic)) + (lambda / (2 * m) * sum (firstThetaZero.^2));

% gradient

% calculate partial derivative of cost function
partial = (sigmoid(predictions) - y);

% get gradient
reg = (lambda / m) * firstThetaZero;
grad = (1 / m * ((sigmoid(predictions) - y)' * X)) + reg';




% =============================================================

end
