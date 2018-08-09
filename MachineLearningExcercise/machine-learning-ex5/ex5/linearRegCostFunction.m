function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad
iterations = 1500;
alpha = 0.001;
% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
theta1=zeros(size(grad));
theta1(1)=lambda/m*theta(1);
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
prediction=X*theta;
J= sum((prediction-y).^2)./(2*m)+lambda/(2*m)*(sum(theta.^2)-theta(1)^2);
#grad=sum((X'*prediction-y).*X)/m+(lambda/m*theta-theta1);
grad     = ((X' * (prediction - y)) / m) + ((lambda/m) * [0; theta(2:end)]);

#for iter = 1:num_iters
  

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
#temp0=theta(1)-alpha*sum(X*theta-y)/m;
#temp1=theta(2)-alpha*sum((X*theta-y).*x)/m;
#theta(1)=temp0;
#theta(2)=temp1;
#endfor
% =========================================================================
grad = grad(:);
end
