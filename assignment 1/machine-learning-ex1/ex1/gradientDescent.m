function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
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
    product = theta' .* X;
    predicted_price = sum(product,2);
    error0 = predicted_price - y;
    error1 = sum((predicted_price - y) .* X(:,2),2);
    sum_errors0 = cumsum(error0);
    sum_errors1 = cumsum(error1);
    
    theta(1) = theta(1) - alpha * (1/m) * sum_errors0(m);
    theta(2) = theta(2) - alpha * (1/m) * sum_errors1(m);
    
  % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
end

end
