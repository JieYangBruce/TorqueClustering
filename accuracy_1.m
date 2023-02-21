function score = accuracy_1(true_labels, cluster_labels)
%ACCURACY_1 Compute clustering accuracy using the true and cluster labels and
%accuracy_1 function is the accelerated version of accuracy function. 
%Here, we replaced the old Hungarian (munckres) function with
%the accelerated version of the Hungarian (munckres) function,
%which is from https://ww2.mathworks.cn/matlabcentral/fileexchange/20328-munkres-assignment-algorithm
%   return the value in 'score'.
%
%   Input  : true_labels    : N-by-1 vector containing true labels
%            cluster_labels : N-by-1 vector containing cluster labels
%
%   Output : score          : clustering accuracy

% Compute the confusion matrix 'cmat', where
%   col index is for true label (CAT),
%   row index is for cluster label (CLS).
n = length(true_labels);
cat = spconvert([(1:n)' true_labels ones(n,1)]);
cls = spconvert([(1:n)' cluster_labels ones(n,1)]);
cls = cls';
cmat = full(cls * cat);

%
% Calculate accuracy
%
[match, cost] = munkres(-cmat);
score = 100*(-cost/n);
