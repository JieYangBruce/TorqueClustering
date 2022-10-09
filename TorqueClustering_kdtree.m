function [Idx,Idx_with_noise,cutnum,cutlink_ori,p,firstlayer_loc_onsortp,mass,R,cutlinkpower_all] = TorqueClustering(data,K,isnoise,isfig)
% input: ALL_DM: distance matrix of n x n, where n means the number of total data samples;
%       K(number of clusters): 
%                 when K=0, exploit the automatic mode to determine the number of clusters;
%                 when K��0��remove the top K-1 connections with the largest torque to obtain the clusters.
%       isfig: choose whether to draw a decision graph, 
%       isfig=1 or isfig=0 denotes drawing or not drawing the graph,
%       respectively.
%       
% output: Idx: final clusters labels;
%         Idx_with_noise: labels with noise, noise labels equal to 0;
%         cutnum: number of abnormal connections that are removed when exploiting the automatic mode.
datanum=size(data,1);cutlinkpower_all=[];
ljmat=sparse(datanum,datanum);
%community=cell(1,datanum);
dataloc=1:1:datanum;
%for i=1:1:datanum
%community{1,i}=i;
%end
community=arrayfun(@(x) {dataloc(x)},1:length(dataloc));
%commu_DM=ALL_DM;
%commu_DM1=commu_DM;
%community_num=datanum;
% i=1:1:community_num
%commu_DM1(i,i)=NaN;
%end
[ini,d]=flann_nn(data,8);
ini = inipd(ini);
G = sparse((1:1:datanum),ini,ones(1,datanum),datanum,datanum);
G = G+G';
commu_DM = sparse((1:1:datanum),ini,d,datanum,datanum);
commu_DM = commu_DM+commu_DM';
neiborloc=arrayfun(@(x) {ini(x)},1:length(ini));
%G=sparse(community_num,community_num);
%for i=1:1:community_num
%gd=find(commu_DM1(i,:)==min(commu_DM1(i,:)));
   
        %G(i,gd(1))=1;
        %G(gd(1),i)=1;
%end
%[~,Order]=sort(commu_DM,2);
%neiborloc=cell(1,community_num);
%for i=1:1:community_num
%    G(i,Order(i,2))=1;
%    G(Order(i,2),i)=1;
%    neiborloc{1,i}=Order(i,2);
%end
SG=graph(G);
BINS = conncomp(SG);
%linklocCell=[];
%[a,b,~]=find(G);
%for i=1:1:community_num
%neiborloc{1,i}=b(a==i)';
%end
cur_NC=numel(unique(BINS));
disp(['The number of clusters in this layer is: ',num2str(cur_NC)])
[ljmat,cutlinkpower]=Updateljmat(ljmat,neiborloc,community,commu_DM,G);
[cutlinkpower,ljmat]=uniqueZ(cutlinkpower,ljmat);
firstlayer_conn_num=size(cutlinkpower,1);
cutlinkpower_all=[cutlinkpower_all;cutlinkpower];
while 1
Idx=BINS;uni_Idx=unique(Idx);
num_uni_Idx=length(uni_Idx);

community_new=cell(1,num_uni_Idx);
for i=1:1:num_uni_Idx
uniloc=(uni_Idx(i)==Idx);
community_new{1,i}=[community{uniloc}];
end
community=community_new;
%community_num=size(community,2);
community_num = num_uni_Idx;
%commu_DM=[];
%commu_DM=zeros(community_num,community_num);
%linklocCell=cell(community_num,community_num);
%for i=1:1:community_num
%for j=1:1:community_num
%commu_DM(i,j)=ps2psdist(community{1,i},community{1,j},ALL_DM);
%end
%end
current_labels=zeros(datanum,1);
for i=1:1:community_num
    current_labels(community{1,i})=i;
end
[~,ic,~] = unique(current_labels,'last');
freq = tabulate(current_labels(:));
%centr_commu=coolMean(data,current_labels);
%[ini,d]=flann_nn(centr_commu,8);
[ini,d]=flann_nn(data(ic,:),8);
ini = inipd(ini);
isneigh=(freq(current_labels(ic),2)<=freq(current_labels(ic(ini)),2));
%isneigh = ones(length(ini),1);
G = sparse((1:1:community_num),ini,ones(1,community_num).*isneigh',community_num,community_num);
G = G+G';
commu_DM = sparse((1:1:community_num),ini,d.*isneigh',community_num,community_num);
commu_DM = commu_DM+commu_DM';
%commu_DM1=commu_DM;
%for i=1:1:community_num
%commu_DM1(i,i)=NaN;
%end
ini(isneigh==0)=NaN;
neiborloc=arrayfun(@(x) {ini(x)},1:length(ini));
neiborloc(cellfun(@isnan,neiborloc) == 1) = {[]};
%G=sparse(community_num,community_num);
%Order=[];
%[~,Order]=sort(commu_DM,2);
%neiborloc=cell(1,community_num);
%for i=1:1:community_num
%gd=find(commu_DM1(i,:)==min(commu_DM1(i,:)));
%    if numel(community{i})<=numel(community{Order(i,2)})
%        G(i,Order(i,2))=1;
%        G(Order(i,2),i)=1;
%        neiborloc{1,i}=Order(i,2);
%    end  
%end
SG=graph(G);
BINS = conncomp(SG);

%[a,b,~]=find(G);
%for i=1:1:community_num
%neiborloc{1,i}=b(a==i)';
%end
%numel(unique(BINS))
cur_NC=numel(unique(BINS));
disp(['The number of clusters in this layer is: ',num2str(cur_NC)])

[ljmat,cutlinkpower]=Updateljmat(ljmat,neiborloc,community,commu_DM,G);
[cutlinkpower,ljmat]=uniqueZ(cutlinkpower,ljmat);
cutlinkpower_all=[cutlinkpower_all;cutlinkpower];
if numel(unique(BINS))==1
break
end
end
mass=cutlinkpower_all(:,5).*cutlinkpower_all(:,6);
R=cutlinkpower_all(:,7).^2;

p=mass.*R;
R_mass=R./mass;

if isfig==1
    subplot(2,1,1)
plot(R(:),mass(:),'o','MarkerSize',5,'MarkerFaceColor','k','MarkerEdgeColor','k');
title ('Decision Graph','FontSize',15.0)
xlabel ('D')
ylabel ('M')
end

[~,order]=sort(p,'descend');%loc=1:numel(p);
[~,order_2]=sort(order);%%
firstlayer_loc_onsortp=order_2(1:firstlayer_conn_num);

if K==0
cutnum =Nab_dec(p,mass,R,firstlayer_loc_onsortp);
   % cutlink=cutlinkpower_all(order(1:cutnum),:);
   %  cutlink_ori=cutlink;
   % cutlink(:,[1 2 5 6 7])=[];
   %noise_loc=intersect((find(R>mean(R))), (find(mass<mean(mass))));
   cutlink1=cutlinkpower_all(order(1:cutnum),:);
   cutlink_ori=cutlink1;
   cutlink1(:,[1 2 5 6 7])=[];
   if isnoise==1
   noise_loc=intersect(intersect((find(R>=mean(R))), (find(mass<=mean(mass)))), (find(R_mass>=mean(R_mass))));
   cutlink2=cutlinkpower_all((union(order(1:cutnum),noise_loc)),:);
   cutlink2(:,[1 2 5 6 7])=[];
   end
%end
else
    cutnum = K-1;
  %  cutlink=cutlinkpower_all(order(1:cutnum),:);
  %  cutlink_ori=cutlink;
  %  cutlink(:,[1 2 5 6 7])=[];
   cutlink1=cutlinkpower_all(order(1:cutnum),:);
   cutlink_ori=cutlink1;
   cutlink1(:,[1 2 5 6 7])=[];
   if isnoise==1
    noise_loc=intersect(intersect((find(R>=mean(R))), (find(mass<=mean(mass)))), (find(R_mass>=mean(R_mass))));
   cutlink2=cutlinkpower_all((union(order(1:cutnum),noise_loc)),:);
   cutlink2(:,[1 2 5 6 7])=[];
   end
end
ljmat1=ljmat;
%cutlinknum=size(cutlink,1);
%for i=1:1:cutlinknum
%ljmat(cutlink(i,1),cutlink(i,2))=0;
%ljmat(cutlink(i,2),cutlink(i,1))=0;
%end
%ljmat_G=graph(ljmat);
%BINS = conncomp(ljmat_G);
%Idx=BINS';
%NC=numel(unique(BINS));
cutlinknum1=size(cutlink1,1);
for i=1:1:cutlinknum1
ljmat(cutlink1(i,1),cutlink1(i,2))=0;
ljmat(cutlink1(i,2),cutlink1(i,1))=0;
end
ljmat_G=graph(ljmat);
BINS = conncomp(ljmat_G);
labels1=BINS';
Idx=labels1;
Idx_with_noise=[];

if isnoise==1
cutlinknum2=size(cutlink2,1);
for i=1:1:cutlinknum2
ljmat1(cutlink2(i,1),cutlink2(i,2))=0;
ljmat1(cutlink2(i,2),cutlink2(i,1))=0;
end
ljmat1_G=graph(ljmat1);
BINS = conncomp(ljmat1_G);
labels2=BINS';

Idx_with_noise=Final_label(labels1,labels2);
end
end
