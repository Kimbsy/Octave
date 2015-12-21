function sim = gaussianKernel(x1, x2, sigma)
%RBFKERNEL returns a radial basis function kernel between x1 and x2
%   sim = gaussianKernel(x1, x2) returns a gaussian kernel between x1 and x2
%   and returns the value in sim

% Ensure that x1 and x2 are column vectors
x1 = x1(:); x2 = x2(:);

% You need to return the following variables correctly.
sim = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the similarity between x1
%               and x2 computed using a Gaussian kernel with bandwidth
%               sigma
%
%


% size(x1) % 3 * 1
% size(x2) % 3 * 1
% size(sigma) % scalar

diffSquared = (x1 - x2) .^ 2; % 3 * 1

sigSquared = sigma ^ 2;

exponent = -1 * (sum(diffSquared)) / (2 * (sigSquared)); % scalar

sim = exp(exponent);




% =============================================================
    
end
