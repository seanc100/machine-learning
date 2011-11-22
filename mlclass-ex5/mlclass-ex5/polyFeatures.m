function [X_poly] = polyFeatures(X, p)
%POLYFEATURES Maps X (1D vector) into the p-th power
%   [X_poly] = POLYFEATURES(X, p) takes a data matrix X (size m x 1) and
%   maps each example into its polynomial features where
%   X_poly(i, :) = [X(i) X(i).^2 X(i).^3 ...  X(i).^p];
%


% You need to return the following variables correctly.
X_poly = zeros(numel(X), p);

% ====================== YOUR CODE HERE ======================
% Instructions: Given a vector X, return a matrix X_poly where the p-th 
%               column X

for i = 1:size(X,1)
X1=X(i);
X_temp=ones(1,p);
X_temp(1)=X1;
for n = 2:p
X_temp(n) = X1.^n;
end;
X_poly(i, :) = X_temp;
end;

% =========================================================================

end
