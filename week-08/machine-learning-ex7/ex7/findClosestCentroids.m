function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%



% Loop over exmaples
for e = 1:size(X, 1)

  example = X(e, :);

  % Set closst distance to be huge
  closestDistance = 1000000000;

  % Check distance to each centroid
  for c = 1:K

    centroid = centroids(c, :);

    squareSum = 0;

    % Allow any number of dimensions
    for d = 1:size(X, 2)
      difference = example(d) - centroid(d);
      squareSum = squareSum + (difference ^ 2);
    end

    distance = sqrt(squareSum);

    % Update closest distance and centroid index
    if distance < closestDistance
      closestDistance = distance;
      idx(e) = c;
    end

  end

end





% =============================================================

end

