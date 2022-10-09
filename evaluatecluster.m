function [NMI,ACC] = evaluatecluster(Idx,datalabels)
%EVALUATECLUSTER 此处显示有关此函数的摘要
%   此处显示详细说明
NMI=nmi(Idx,datalabels);
ACC=accuracy(datalabels,Idx)/100;
end

