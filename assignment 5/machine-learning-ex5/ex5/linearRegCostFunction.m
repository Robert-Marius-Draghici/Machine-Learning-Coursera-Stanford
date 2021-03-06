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

product = theta' .* X;
predicted_price = sum(product,2);
squared_error = sum((predicted_price - y).^2,1);
J = (1 / (2 * m)) * squared_error + (lambda/(2*m)) * sum((theta(2:size(theta,1)).^2),1);

theta_aux = theta(2:size(theta));
theta_regularized = [0;theta_aux];
grad = (1/m) * (X' * (predicted_price - y)) + (lambda/m) * theta_regularized;










% =========================================================================

grad = grad(:);

end
