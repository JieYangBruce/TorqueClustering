function [NAB,resolution] = Nab_dec(p,mass,R,florderloc)
%IND_DEC_8 此处显示有关此函数的摘要
%   此处显示详细说明
% p: torque of each connection
[sort_p,order]=sort(p,'descend');
sort_R=R(order);
sort_mass=mass(order);
sort_p_1=sort_p;%% non-first-layer sort_p
sort_p_1(florderloc)=NaN;
sort_R_1=sort_R;
sort_R_1(florderloc)=NaN;
sort_mass_1=sort_mass;
sort_mass_1(florderloc)=NaN;
[ind1]=Qac(sort_p);
ind1(florderloc)=NaN;
%[sort_ind1,gaplist]=sort(ind1,'descend');
num_p=numel(p);
loc=1:num_p;
non_florderloc=setdiff(loc,florderloc);
a=(sort_R_1>=mean(sort_R(non_florderloc)));
b=(sort_mass_1>=mean(sort_mass(non_florderloc)));
c=(sort_p_1>=mean(sort_p(non_florderloc)));

resolution=loc((a&b&c)');
%resolution=loc(large');
%w_res=sum(sort_p(resolution));
%w_all=sum(sort_p);
%max_r=max(resolution);
%if isequal(resolution, (1:max_r))
%NAB=max_r;
%else
if ~isempty(resolution)
    ind2=zeros(1,num_p);
    for i=1:1:num_p
       gd=1:i;
       common_cn=intersect(gd, resolution);
       %ind2(i)=(sum(sort_p(gd))/w_all)*(sum(sort_p(common_cn))/w_res);
       %ind2(i)=(sum(sort_p(gd))/w_all);
       ind2(i)=numel(common_cn)/numel(resolution);
    end
  ind=ind1.*ind2;
else 
    ind=ind1;
end
 %ind = 0.5*mapminmax(ind1, 0, 1)+0.5*mapminmax(ind2, 0, 1);
  NAB=find(ind==max(ind));
%end
end

