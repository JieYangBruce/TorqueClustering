function [ind] = Qac(sort_p)
%IND_DEC_1 此处显示有关此函数的摘要 。。。。。。相邻两数相除
%   此处显示详细说明
p_num=numel(sort_p);
ind_num=p_num-1;
ind=zeros(1,ind_num);
for i=1:1:ind_num
    ind(i)=sort_p(i)/sort_p(i+1);
end
ind(p_num)=NaN;
end

