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

%theta' .* X multiplies theta0 with 1, and theta1 with the each feature  
product = theta' .* X;
%here we compute theta0 * x0 + theta1 * x1 for each training example
predicted_price = sum(product,2);
%here we subtract the actual price from the predicted price, calculate the 
%square of each subtraction and we calculate the sum of the values in the vector
%we use sum on dimension 1(se aduna fiecare coloana).
squared_error = sum((predicted_price - y).^2,1);
J = (1 / (2 * m)) * squared_error;


% =========================================================================

end
