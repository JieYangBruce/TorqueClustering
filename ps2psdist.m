function [Cdist] = ps2psdist(Loc_dataset1,Loc_dataset2,DM)
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

%PS2PSDIST_DM Summary of this function goes here %%just using dist matrix

%   Detailed explanation goes here
%if numel(Loc_dataset1)==1&&numel(Loc_dataset2)==1
    %Cdist=DM(Loc_dataset1,Loc_dataset2);
%else
    %datanum=size(DM,1);
   % all_loc=1:1:datanum;
   % diff_Loc1=setdiff(all_loc, Loc_dataset1);
   % diff_Loc2=setdiff(all_loc, Loc_dataset2);
   % dists=DM;
%dists(diff_Loc1,:)=[];
%dists(:,diff_Loc2)=[];
dists=DM(Loc_dataset1,Loc_dataset2);
%Cdist=mean(mean(dists));%%类间平均距离
%Cdist=mean([num1 num2])*mean(mean(dists));
Cdist=min(min(dists));%%两类间最短距离
%Cdist=max(max(dists));
%Cdist=norm(mean(dataset1)-mean(dataset2));
%end
end

