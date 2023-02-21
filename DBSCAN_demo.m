%%%%%%%%%%%%%%DBSCAN on synthetic data sets
clear;
data=importdata('data1.mat');
datalabels=data(:,3)+1;
data(:,3)=[];
mean_data=mean(data);
X_mean=pdist2(data,mean_data);
d_=mean(X_mean);
datalabels=datalabels+1;
minpts=2*size(data,2);
th=1;
for i=1:1:10
eps=d_/i;
Idx = dbscan(data,eps,minpts);
AM(1,th)=ami(Idx+2,datalabels+1);NM(1,th)=nmi(Idx+2,datalabels+1);AC(1,th)=accuracy(datalabels+1,Idx+2)/100;
if ismember([-1],Idx)
NC(1,th)=numel(unique(Idx))-1;
else NC(1,th)=numel(unique(Idx));
end
th=th+1;
end
max_AM=max(AM),loc=find(max_AM==AM);fNC=NC(loc(1)),max_NM = NM(loc(1)),max_AC=AC(loc(1))

 
clear;
data=importdata('data2.mat');
datalabels=data(:,3)+1;
data(:,3)=[];
mean_data=mean(data);
X_mean=pdist2(data,mean_data);
d_=mean(X_mean);
datalabels=datalabels+1;
minpts=2*size(data,2);
th=1;
for i=1:1:10
eps=d_/i;
Idx = dbscan(data,eps,minpts);
AM(1,th)=ami(Idx+2,datalabels+1);NM(1,th)=nmi(Idx+2,datalabels+1);AC(1,th)=accuracy(datalabels+1,Idx+2)/100;
if ismember([-1],Idx)
NC(1,th)=numel(unique(Idx))-1;
else NC(1,th)=numel(unique(Idx));
end
th=th+1;
end
max_AM=max(AM),loc=find(max_AM==AM);fNC=NC(loc(1)),max_NM = NM(loc(1)),max_AC=AC(loc(1))



clear;
data=importdata('data3.mat');
datalabels=data(:,3)+1;
data(:,3)=[];
commandhistory
mean_data=mean(data);
X_mean=pdist2(data,mean_data);
d_=mean(X_mean);
datalabels=datalabels+1;
minpts=2*size(data,2);
th=1;
for i=1:1:10
eps=d_/i;
Idx = dbscan(data,eps,minpts);
AM(1,th)=ami(Idx+2,datalabels+1);NM(1,th)=nmi(Idx+2,datalabels+1);AC(1,th)=accuracy(datalabels+1,Idx+2)/100;
if ismember([-1],Idx)
NC(1,th)=numel(unique(Idx))-1;
else NC(1,th)=numel(unique(Idx));
end
th=th+1;
end
max_AM=max(AM),loc=find(max_AM==AM);fNC=NC(loc(1)),max_NM = NM(loc(1)),max_AC=AC(loc(1))


clear;
data=importdata('data4.mat');
datalabels=data(:,3)+1;
data(:,3)=[];
commandhistory
mean_data=mean(data);
X_mean=pdist2(data,mean_data);
d_=mean(X_mean);
datalabels=datalabels+1;
minpts=2*size(data,2);
th=1;
for i=1:1:10
eps=d_/i;
Idx = dbscan(data,eps,minpts);
AM(1,th)=ami(Idx+2,datalabels+1);NM(1,th)=nmi(Idx+2,datalabels+1);AC(1,th)=accuracy(datalabels+1,Idx+2)/100;
if ismember([-1],Idx)
NC(1,th)=numel(unique(Idx))-1;
else NC(1,th)=numel(unique(Idx));
end
th=th+1;
end
max_AM=max(AM),loc=find(max_AM==AM);fNC=NC(loc(1)),max_NM = NM(loc(1)),max_AC=AC(loc(1))


clear;
data=importdata('data6.mat');
datalabels=data(:,3)+1;
data(:,3)=[];
commandhistory
mean_data=mean(data);
X_mean=pdist2(data,mean_data);
d_=mean(X_mean);
datalabels=datalabels+1;
minpts=2*size(data,2);
th=1;
for i=1:1:10
eps=d_/i;
Idx = dbscan(data,eps,minpts);
AM(1,th)=ami(Idx+2,datalabels+1);NM(1,th)=nmi(Idx+2,datalabels+1);AC(1,th)=accuracy(datalabels+1,Idx+2)/100;
if ismember([-1],Idx)
NC(1,th)=numel(unique(Idx))-1;
else NC(1,th)=numel(unique(Idx));
end
th=th+1;
end
max_AM=max(AM),loc=find(max_AM==AM);fNC=NC(loc(1)),max_NM = NM(loc(1)),max_AC=AC(loc(1))


clear;
data=importdata('data7.mat');
datalabels=data(:,3)+1;
data(:,3)=[];
commandhistory
mean_data=mean(data);
X_mean=pdist2(data,mean_data);
d_=mean(X_mean);
datalabels=datalabels+1;
minpts=2*size(data,2);
th=1;
for i=1:1:10
eps=d_/i;
Idx = dbscan(data,eps,minpts);
AM(1,th)=ami(Idx+2,datalabels+1);NM(1,th)=nmi(Idx+2,datalabels+1);AC(1,th)=accuracy(datalabels+1,Idx+2)/100;
if ismember([-1],Idx)
NC(1,th)=numel(unique(Idx))-1;
else NC(1,th)=numel(unique(Idx));
end
th=th+1;
end
max_AM=max(AM),loc=find(max_AM==AM);fNC=NC(loc(1)),max_NM = NM(loc(1)),max_AC=AC(loc(1))


clear;
data=importdata('data8.mat');
datalabels=data(:,3)+1;
data(:,3)=[];
commandhistory
mean_data=mean(data);
X_mean=pdist2(data,mean_data);
d_=mean(X_mean);
datalabels=datalabels+1;
minpts=2*size(data,2);
th=1;
for i=1:1:10
eps=d_/i;
Idx = dbscan(data,eps,minpts);
AM(1,th)=ami(Idx+2,datalabels+1);NM(1,th)=nmi(Idx+2,datalabels+1);AC(1,th)=accuracy(datalabels+1,Idx+2)/100;
if ismember([-1],Idx)
NC(1,th)=numel(unique(Idx))-1;
else NC(1,th)=numel(unique(Idx));
end
th=th+1;
end
max_AM=max(AM),loc=find(max_AM==AM);fNC=NC(loc(1)),max_NM = NM(loc(1)),max_AC=AC(loc(1))

clear;
data=importdata('data9.mat');
datalabels=data(:,3)+1;
data(:,3)=[];
commandhistory
mean_data=mean(data);
X_mean=pdist2(data,mean_data);
d_=mean(X_mean);
datalabels=datalabels+1;
minpts=2*size(data,2);
th=1;
for i=1:1:10
eps=d_/i;
Idx = dbscan(data,eps,minpts);
AM(1,th)=ami(Idx+2,datalabels+1);NM(1,th)=nmi(Idx+2,datalabels+1);AC(1,th)=accuracy(datalabels+1,Idx+2)/100;
if ismember([-1],Idx)
NC(1,th)=numel(unique(Idx))-1;
else NC(1,th)=numel(unique(Idx));
end
th=th+1;
end
max_AM=max(AM),loc=find(max_AM==AM);fNC=NC(loc(1)),max_NM = NM(loc(1)),max_AC=AC(loc(1))

%%%%%%%%%%%%%%DBSCAN on real-world data sets
clear
commandhistory
data=importdata('YTFdb.mat');
datalabels=data.datalabels;
data=data.data;
mean_data=mean(data);
X_mean=pdist2(data,mean_data,'cosine');
d_=mean(X_mean);
datalabels=datalabels+1;

minpts_eps_NMI_AC_AM=zeros(50,5);
th=1;
for minpts=10:10:50
for i=1:1:10
eps=d_/i; minpts_eps_NMI_AC_AM(th,1)=minpts;minpts_eps_NMI_AC_AM(th,2)=eps;
tic
Idx = dbscan(data,eps,minpts,'Distance','cosine');
toc
minpts_eps_NMI_AC_AM(th,3)=nmi(Idx,datalabels);minpts_eps_NMI_AC_AM(th,5)=ami(Idx+2,datalabels+1);minpts_eps_NMI_AC_AM(th,4)=accuracy_1(Idx+2,datalabels+1)/100;
if ismember([-1],Idx)
NC(1,th)=numel(unique(Idx))-1;
else NC(1,th)=numel(unique(Idx));
end
th=th+1;
end
end


max_AM=max(minpts_eps_NMI_AC_AM(:,5)),loc3=find(minpts_eps_NMI_AC_AM(:,5)==max_AM);max_AM_corsp_NC=NC(loc3(1)),max_NM=minpts_eps_NMI_AC_AM(loc3(1),3),max_AC=minpts_eps_NMI_AC_AM(loc3(1),4)


clear
commandhistory
data=importdata('MNIST_UMAP.mat');
datalabels=data.datalabels;
data=data.data;
mean_data=mean(data);
X_mean=pdist2(data,mean_data);
d_=mean(X_mean);
datalabels=datalabels+1;
minpts=2*size(data,2);
th=1;
for i=1:1:10
eps=d_/i;
tic,Idx = dbscan(data,eps,minpts);toc
AM(1,th)=ami(Idx+2,datalabels+1);NM(1,th)=nmi(Idx+2,datalabels+1);AC(1,th)=accuracy(datalabels+1,Idx+2)/100;
if ismember([-1],Idx)
NC(1,th)=numel(unique(Idx))-1;
else NC(1,th)=numel(unique(Idx));
end
th=th+1;
end
max_AM=max(AM),loc=find(max_AM==AM);fNC=NC(loc(1)),max_NM = NM(loc(1)),max_AC=AC(loc(1))


 clear;
disp('For COIL-100 data set:')
data=importdata('Coil100.mat');
datalabels=double(data.gtlabels)';
data=double(data.X);
datalabels=datalabels+1;
mean_data=mean(data);
X_mean=pdist2(data,mean_data,'cosine');
d_=mean(X_mean);
datalabels=datalabels+1;

minpts_eps_NMI_AC_AM=zeros(50,5);
th=1;
for minpts=10:10:50
for i=1:1:10
eps=d_/i; minpts_eps_NMI_AC_AM(th,1)=minpts;minpts_eps_NMI_AC_AM(th,2)=eps;
tic
Idx = dbscan(data,eps,minpts,'Distance','cosine');
toc
minpts_eps_NMI_AC_AM(th,3)=nmi(Idx,datalabels);minpts_eps_NMI_AC_AM(th,5)=ami(Idx+2,datalabels+1);minpts_eps_NMI_AC_AM(th,4)=accuracy_1(Idx+2,datalabels+1)/100;
if ismember([-1],Idx)
NC(1,th)=numel(unique(Idx))-1;
else NC(1,th)=numel(unique(Idx));
end
th=th+1;
end
end


max_AM=max(minpts_eps_NMI_AC_AM(:,5)),loc3=find(minpts_eps_NMI_AC_AM(:,5)==max_AM);max_AM_corsp_NC=NC(loc3(1)),max_NM=minpts_eps_NMI_AC_AM(loc3(1),3),max_AC=minpts_eps_NMI_AC_AM(loc3(1),4)
   
    
 
clear;
disp('For Shuttle data set:')
data=importdata('shuttle.mat');
datalabels=double(data.gtlabels)';
data=double(data.X);
datalabels=datalabels+1;
mean_data=mean(data);
X_mean=pdist2(data,mean_data,'cosine');
d_=mean(X_mean);
datalabels=datalabels+1;
minpts=2*size(data,2);
th=1;
for i=1:1:10
eps=d_/i;
tic,Idx = dbscan(data,eps,minpts,'Distance','cosine');toc
AM(1,th)=ami(Idx+2,datalabels+1);NM(1,th)=nmi(Idx+2,datalabels+1);AC(1,th)=accuracy(datalabels+1,Idx+2)/100;
if ismember([-1],Idx)
NC(1,th)=numel(unique(Idx))-1;
else NC(1,th)=numel(unique(Idx));
end
th=th+1;
end
max_AM=max(AM),loc=find(max_AM==AM);fNC=NC(loc(1)),max_NM = NM(loc(1)),max_AC=AC(loc(1))

clear;
disp('For RNA-Seq data set:')
data=importdata('gene_data.mat');
datalabels=importdata('gene_datalabels.mat');
mean_data=mean(data);
X_mean=pdist2(data,mean_data,'cosine');
d_=mean(X_mean);
datalabels=datalabels+1;

minpts_eps_NMI_AC_AM=zeros(50,5);
th=1;
for minpts=10:10:50
for i=1:1:10
eps=d_/i; minpts_eps_NMI_AC_AM(th,1)=minpts;minpts_eps_NMI_AC_AM(th,2)=eps;
tic
Idx = dbscan(data,eps,minpts,'Distance','cosine');
toc
minpts_eps_NMI_AC_AM(th,3)=nmi(Idx,datalabels);minpts_eps_NMI_AC_AM(th,5)=ami(Idx+2,datalabels+1);minpts_eps_NMI_AC_AM(th,4)=accuracy_1(Idx+2,datalabels+1)/100;
if ismember([-1],Idx)
NC(1,th)=numel(unique(Idx))-1;
else NC(1,th)=numel(unique(Idx));
end
th=th+1;
end
end


max_AM=max(minpts_eps_NMI_AC_AM(:,5)),loc3=find(minpts_eps_NMI_AC_AM(:,5)==max_AM);max_AM_corsp_NC=NC(loc3(1)),max_NM=minpts_eps_NMI_AC_AM(loc3(1),3),max_AC=minpts_eps_NMI_AC_AM(loc3(1),4)


clear;
disp('For Haberman data set:')
data=importdata('haberman.txt');
datalabels=data(:,4);
data(:,4)=[];
mean_data=mean(data);
X_mean=pdist2(data,mean_data,'cosine');
d_=mean(X_mean);
datalabels=datalabels+1;
minpts=2*size(data,2);
th=1;
for i=1:1:10
eps=d_/i;
tic,Idx = dbscan(data,eps,minpts,'Distance','cosine');toc
AM(1,th)=ami(Idx+2,datalabels+1);NM(1,th)=nmi(Idx+2,datalabels+1);AC(1,th)=accuracy(datalabels+1,Idx+2)/100;
if ismember([-1],Idx)
NC(1,th)=numel(unique(Idx))-1;
else NC(1,th)=numel(unique(Idx));
end
th=th+1;
end
max_AM=max(AM),loc=find(max_AM==AM);fNC=NC(loc(1)),max_NM = NM(loc(1)),max_AC=AC(loc(1))


clear
commandhistory
data=importdata('zoo.mat');
datalabels=data.datalabels;
data=data.data;
mean_data=mean(data);
X_mean=pdist2(data,mean_data,'cosine');
d_=mean(X_mean);
datalabels=datalabels+1;
minpts_eps_NMI_AC_AM=zeros(50,5);
th=1;
for minpts=10:10:50
for i=1:1:10
eps=d_/i; minpts_eps_NMI_AC_AM(th,1)=minpts;minpts_eps_NMI_AC_AM(th,2)=eps;
tic
Idx = dbscan(data,eps,minpts,'Distance','cosine');
toc
minpts_eps_NMI_AC_AM(th,3)=nmi(Idx,datalabels);minpts_eps_NMI_AC_AM(th,5)=ami(Idx+2,datalabels+1);minpts_eps_NMI_AC_AM(th,4)=accuracy_1(Idx+2,datalabels+1)/100;
if ismember([-1],Idx)
NC(1,th)=numel(unique(Idx))-1;
else NC(1,th)=numel(unique(Idx));
end
th=th+1;
end
end
max_AM=max(minpts_eps_NMI_AC_AM(:,5)),loc3=find(minpts_eps_NMI_AC_AM(:,5)==max_AM);max_AM_corsp_NC=NC(loc3(1)),max_NM=minpts_eps_NMI_AC_AM(loc3(1),3),max_AC=minpts_eps_NMI_AC_AM(loc3(1),4)


clear;
disp('For Atom data set:')
data=importdata('atom.mat');
datalabels=importdata('atomlabels.mat');
mean_data=mean(data);
X_mean=pdist2(data,mean_data);
d_=mean(X_mean);
datalabels=datalabels+1;
minpts=2*size(data,2);
th=1;
for i=1:1:10
eps=d_/i;
tic,Idx = dbscan(data,eps,minpts);toc
AM(1,th)=ami(Idx+2,datalabels+1);NM(1,th)=nmi(Idx+2,datalabels+1);AC(1,th)=accuracy(datalabels+1,Idx+2)/100;
if ismember([-1],Idx)
NC(1,th)=numel(unique(Idx))-1;
else NC(1,th)=numel(unique(Idx));
end
th=th+1;
end
max_AM=max(AM),loc=find(max_AM==AM);fNC=NC(loc(1)),max_NM = NM(loc(1)),max_AC=AC(loc(1))

clear
commandhistory
data=importdata('soybean.mat');
datalabels=data.datalabels;
data=data.data;
mean_data=mean(data);
X_mean=pdist2(data,mean_data,'cosine');
d_=mean(X_mean);
datalabels=datalabels+1;
minpts_eps_NMI_AC_AM=zeros(50,5);
th=1;
for minpts=10:10:50
for i=1:1:10
eps=d_/i; minpts_eps_NMI_AC_AM(th,1)=minpts;minpts_eps_NMI_AC_AM(th,2)=eps;
tic
Idx = dbscan(data,eps,minpts,'Distance','cosine');
toc
minpts_eps_NMI_AC_AM(th,3)=nmi(Idx,datalabels);minpts_eps_NMI_AC_AM(th,5)=ami(Idx+2,datalabels+1);minpts_eps_NMI_AC_AM(th,4)=accuracy_1(Idx+2,datalabels+1)/100;
if ismember([-1],Idx)
NC(1,th)=numel(unique(Idx))-1;
else NC(1,th)=numel(unique(Idx));
end
th=th+1;
end
end
max_AM=max(minpts_eps_NMI_AC_AM(:,5)),loc3=find(minpts_eps_NMI_AC_AM(:,5)==max_AM);max_AM_corsp_NC=NC(loc3(1)),max_NM=minpts_eps_NMI_AC_AM(loc3(1),3),max_AC=minpts_eps_NMI_AC_AM(loc3(1),4)


clear
commandhistory
data=importdata('celltrack.mat');
datalabels=data.datalabels;
data=data.data;
mean_data=mean(data);
X_mean=pdist2(data,mean_data,'cosine');
d_=mean(X_mean);
datalabels=datalabels+1;
minpts_eps_NMI_AC_AM=zeros(50,5);
th=1;
for minpts=10:10:50
for i=1:1:10
eps=d_/i; minpts_eps_NMI_AC_AM(th,1)=minpts;minpts_eps_NMI_AC_AM(th,2)=eps;
tic
Idx = dbscan(data,eps,minpts,'Distance','cosine');
toc
minpts_eps_NMI_AC_AM(th,3)=nmi(Idx,datalabels);minpts_eps_NMI_AC_AM(th,5)=ami(Idx+2,datalabels+1);minpts_eps_NMI_AC_AM(th,4)=accuracy_1(Idx+2,datalabels+1)/100;
if ismember([-1],Idx)
NC(1,th)=numel(unique(Idx))-1;
else NC(1,th)=numel(unique(Idx));
end
th=th+1;
end
end
max_AM=max(minpts_eps_NMI_AC_AM(:,5)),loc3=find(minpts_eps_NMI_AC_AM(:,5)==max_AM);max_AM_corsp_NC=NC(loc3(1)),max_NM=minpts_eps_NMI_AC_AM(loc3(1),3),max_AC=minpts_eps_NMI_AC_AM(loc3(1),4)


clear;
disp('For CMU-PIE data set:')
data = h5read('CMU-PIE.h5','/data');
datalabels=h5read('CMU-PIE.h5','/labels');
data1=zeros(2856,32*32*1);
for i=1:1:2856
data1(i,:)=reshape(data(:,:,:,i),1,32*32*1);
end
data=data1;
datalabels=double(datalabels);
mean_data=mean(data);
X_mean=pdist2(data,mean_data,'cosine');
d_=mean(X_mean);
datalabels=datalabels+1;
minpts_eps_NMI_AC_AM=zeros(50,5);
th=1;
for minpts=10:10:50
for i=1:1:10
eps=d_/i; minpts_eps_NMI_AC_AM(th,1)=minpts;minpts_eps_NMI_AC_AM(th,2)=eps;
tic
Idx = dbscan(data,eps,minpts,'Distance','cosine');
toc
minpts_eps_NMI_AC_AM(th,3)=nmi(Idx,datalabels);minpts_eps_NMI_AC_AM(th,5)=ami(Idx+2,datalabels+1);minpts_eps_NMI_AC_AM(th,4)=accuracy_1(Idx+2,datalabels+1)/100;
if ismember([-1],Idx)
NC(1,th)=numel(unique(Idx))-1;
else NC(1,th)=numel(unique(Idx));
end
th=th+1;
end
end
max_AM=max(minpts_eps_NMI_AC_AM(:,5)),loc3=find(minpts_eps_NMI_AC_AM(:,5)==max_AM);max_AM_corsp_NC=NC(loc3(1)),max_NM=minpts_eps_NMI_AC_AM(loc3(1),3),max_AC=minpts_eps_NMI_AC_AM(loc3(1),4)


clear
commandhistory
data=importdata('reuters.mat');
datalabels=data.datalabels;
data=data.data;
mean_data=mean(data);
X_mean=pdist2(data,mean_data,'cosine');
d_=mean(X_mean);
datalabels=datalabels+1;
minpts_eps_NMI_AC_AM=zeros(50,5);
th=1;
for minpts=10:10:50
for i=1:1:10
eps=d_/i; minpts_eps_NMI_AC_AM(th,1)=minpts;minpts_eps_NMI_AC_AM(th,2)=eps;
tic
Idx = dbscan(data,eps,minpts,'Distance','cosine');
toc
minpts_eps_NMI_AC_AM(th,3)=nmi(Idx,datalabels);minpts_eps_NMI_AC_AM(th,5)=ami(Idx+2,datalabels+1);minpts_eps_NMI_AC_AM(th,4)=accuracy_1(Idx+2,datalabels+1)/100;
if ismember([-1],Idx)
NC(1,th)=numel(unique(Idx))-1;
else NC(1,th)=numel(unique(Idx));
end
th=th+1;
end
end
max_AM=max(minpts_eps_NMI_AC_AM(:,5)),loc3=find(minpts_eps_NMI_AC_AM(:,5)==max_AM);max_AM_corsp_NC=NC(loc3(1)),max_NM=minpts_eps_NMI_AC_AM(loc3(1),3),max_AC=minpts_eps_NMI_AC_AM(loc3(1),4)
