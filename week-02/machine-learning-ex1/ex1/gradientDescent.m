function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %


    newTheta = theta;

    % for each theta get the new value and store it in newTheta
    for ind = 1:length(theta)
        theta_j = theta(ind);

        total = 0;

        % sum all training examnples
        for k = 1:m

            xValue = X(k, ind);
            yValue = y(k);

            hOfx = X(k, :) * theta;

            total = total + ((hOfx - yValue) * xValue);

        endfor

        newTheta(ind) = theta_j - (alpha * (1 / m) * total);

    endfor

    % update theta
    theta = newTheta;


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
