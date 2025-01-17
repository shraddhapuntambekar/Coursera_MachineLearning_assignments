function Z = projectData(X, U, K)
%PROJECTDATA Computes the reduced data representation when projecting only 
%on to the top k eigenvectors
%   Z = projectData(X, U, K) computes the projection of 
%   the normalized inputs X into the reduced dimensional space spanned by
%   the first K columns of U. It returns the projected examples in Z.
%

% You need to return the following variables correctly.
Z = zeros(size(X, 1), K);   

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the projection of the data using only the top K 
%               eigenvectors in U (first K columns). 
%               For the i-th example X(i,:), the projection on to the k-th 
%               eigenvector is given as follows:
%                    x = X(i, :)';
%                    projection_k = x' * U(:, k);
%

%%% Solution 1
%    for ctr1 = 1:size(X, 1)
%        for ctr2 = 1:K
%            Z(ctr1,ctr2) = (X(ctr1,:)')' * U(:,ctr2);
%        end
%    end

%%% Soultion 2
    Z = X * U(:,1:K);  %%% ( 50*2 2*K => 50*K  )


% =============================================================

end
