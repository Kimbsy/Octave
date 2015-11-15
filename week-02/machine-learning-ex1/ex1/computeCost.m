function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


% calculate h(x) from given linear hypothesis function


% Properly vectorized VVV

predictions = X * theta;

squareErrors = (predictions - y) .^ 2;

J = 1 / (2 * m) * sum(squareErrors);


% First attempt VVV

% total = 0;

% for ind = 1:m

%   hOfx = X(ind, :) * theta;

%   yValue = y(ind);

%   toSum = (hOfx - yValue) ^ 2;

%   total = total + toSum;

% end

% J = (1 / (2 * m)) * total;


% =========================================================================

end
