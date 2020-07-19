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

J = ((1/(2*m))*(sum(sum([theta'.*X , -y],2).^2) ) ) + ((lambda/(2*m))*(sum(theta(2:end,:).^2))) ;



%grad(1,:)= (1/m)* sum(sum([theta'.*X , -y],2).*X(:,1))  ;
%grad(2:end,:)=((1/m)* sum(sum([theta'.*X , -y],2).*X(:,2:end))) + ((lambda/m)*sum(theta(2:end,:))) ;

thetatemp = [0; theta(2:end)];
grad=((1/m).* (X' * (X*theta -y))) + ((lambda/m)*thetatemp) ;

%%% X*theta - y => is 12*1 <= from 12*2 * 2*1  - 12*1
%%% X' * (X*theta - y) => is 2*1 <= from 2*12  12*1
%%% thetatemp is 2*1
% =========================================================================

grad = grad(:);

end
