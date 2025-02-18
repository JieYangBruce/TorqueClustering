function [NMI,ACC] = evaluatecluster(Idx,datalabels)
% -----------------------------------------------------------------------------
%  Torque Clustering - Matlab Implementation
%  Copyright (C) Jie Yang
%
%  Licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0
%  International (CC BY-NC-SA 4.0)
%
%  This code is intended for academic and research purposes only.
%  Commercial use is strictly prohibited. Please contact the author for licensing inquiries.
%
%  Author: Jie Yang (jie.yang.uts@gmail.com)
% -----------------------------------------------------------------------------

%EVALUATECLUSTER 此处显示有关此函数的摘要
%   此处显示详细说明
NMI=nmi(Idx,datalabels);
ACC=accuracy(datalabels,Idx)/100;
end

