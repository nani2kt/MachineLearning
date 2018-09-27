function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y
%data=load('ex1data1.txt');
%X=data(:,1);
%y=data(:,2);
% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

%% ======================= Part 2: Plotting =======================
%plot(X,y,'rx','MarkerSize',10);
%xlabel('population of city in 10,000s');
%ylabel('profit in $10,000s');

%% =================== Part 3: Cost and Gradient descent ===================

%X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
%theta = zeros(2, 1); % initialize fitting parameters

% Some gradient descent settings
%iterations = 1500;
%alpha = 0.01;
%delta=0;
prediction=X*theta;
%computing J(tetha)
n=2;
 J= sum((prediction-y).^2)./(2*m);
 


%delta=zeros(n,1);
%for i=1:2
  %for j=1:1
   % delta(i,j)=sum(((prediction-y).).*X(:,i));
  %endfor
%endfor

%delta=sum(delta);
%delta=delta./m;
%for i=1:1500
%theta=theta-alpha*delta;

%prediction=X*theta
% =========================================================================

end
