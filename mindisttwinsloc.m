function [linkloc1,linkloc2] = mindisttwinsloc(dataloc1,dataloc2,DM)
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

%MINDISTLOC Summary of this function goes here
%   Detailed explanation goes here
%num1=size(dataloc1,2);
%num2=size(dataloc2,2);
%dists=zeros(num1,num2);
%for i=1:1:num1
%for j=1:1:num2
    %dists(i,j)=DM(dataloc1(i),dataloc2(j));
%end
%end
dists=DM(dataloc1,dataloc2);
[a,b]=find(dists==min(min(dists)));
linkloc1=dataloc1(a(1));
linkloc2=dataloc2(b(1));

end

