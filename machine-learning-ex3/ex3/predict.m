function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

% Add ones to the X data matrix
X = [ones(m, 1) X];
%Loop implementation
%a1 = zeros(m, 25);
%for i=1:m, 
%    a1(i,:)=sigmoid(Theta1 * X(i,:)')';
%end
%a11 = [ones(m,1) a1];
%for i=1:m,
%    a2(i,:)=sigmoid(Theta2 * a11(i,:)')';
%end
a1 = sigmoid(Theta1 * X')';
a1 = [ones(m,1) a1];
a2 = sigmoid(Theta2 * a1')';
[a, p] = max(a2, [], 2); % a is ignored

% =========================================================================


end
