function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
n=2;
prediction=X*theta;
delta0=0;
delta1=0;
x=X(:,2);
%for i=1:2
 % for j=1:1
  %  delta(i,j)=sum(((prediction-y)).*x(i,j));
  %endfor
%endfor
%for k=1:m
 % delta0=delta0+(prediction-y)(k);
%endfor
%delta0=sum(prediction-y);
%for k=1:m
 % delta1[k]=(prediction-y)(k)* x(k);
%endfor
%delta1=sum((prediction-y).*x);
%delta1=sum((prediction-y).*x);
%delta=zeros(n,1);
%delta(1)=(delta0)/m;
%delta(2)=(delta1)/m;

%delta=sum(delta);
%delta=delta./m;
for iter = 1:num_iters
  

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
temp0=theta(1)-alpha*sum(X*theta-y)/m;
temp1=theta(2)-alpha*sum((X*theta-y).*x)/m;
theta(1)=temp0;
theta(2)=temp1;
%theta=theta-alpha.*delta;

%prediction=X*theta







    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

endfor

end
