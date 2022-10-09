function [newZ,ljmat] = uniqueZ(Z,old_ljmat)
%UNIQUEZ Summary of this function goes here
%   Detailed explanation goes here
if isempty(Z)==1
    newZ=[];
else
    sortrow_Z=sort(Z(:,[1 2]),2);
[~,order]=unique(sortrow_Z,'rows');
a=length(order);
b=size(Z,2);
newZ=zeros(a,b);
for i=1:1:a
    newZ(i,:)=Z(order(i),:);
end
end
sortrow_Y=sort(Z(:,[3 4]),2);
Uni_sortrow_Y=sortrow_Y(order,:);
test=ismember(sortrow_Y,Uni_sortrow_Y,'rows');
rmv=sortrow_Y(~test,:);
if ~isempty(rmv)
    rmv_num=size(rmv,1);
    for j=1:1:rmv_num
        old_ljmat(rmv(j,1),rmv(j,2))=0;
        old_ljmat(rmv(j,2),rmv(j,1))=0;
    end
end
ljmat=old_ljmat;
end

