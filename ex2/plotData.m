function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

pass_ind = find(y == 1);
fail_ind = find(y == 0);  
%%fail_ind = setdiff([1:length(y)]', pass_ind);  %% other way to do the same thing

plot(X(pass_ind,1),X(pass_ind,2),'+k','MarkerSize',8);
plot(X(fail_ind,1),X(fail_ind,2),'ok','MarkerFaceColor','y','MarkerSize',8);
xlabel('Exam 1 score');
xlabel('Exam 2 score');
title('Scatter plot of the training data')
legend('Addmitted','Non Admitted',"Location","bestoutside")







% =========================================================================



hold off;

end
