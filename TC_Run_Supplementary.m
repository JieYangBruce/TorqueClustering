%%
disp('TC results on 27 data sets with noise, outliers, overlaps, or other peculiar distribution')
addpath(genpath('../data/supplement data'))

disp('Noise1')
clear;
data=importdata('zelnik2.arff');
data=data.data;
datalabels=data(:,3);
data(:,3)=[];
%K=numel(unique(datalabels))-1;
DM=pdist2(data,data);
[idx,idx1]=TorqueClustering(DM,0,1);
NC=numel(unique(idx1))-1,NM=nmi(idx1,datalabels)

disp('Noise2')
clear;
data=importdata('zelnik4.txt');
datalabels=data(:,3);
data(:,3)=[];
%K=numel(unique(datalabels))-1;
DM=pdist2(data,data);
[idx,idx1]=TorqueClustering(DM,0,1);
NC=numel(unique(idx1))-1,NM=nmi(idx1,datalabels)

disp('Noise3')
clear;
data=importdata('cluto58k.txt');
datalabels=data(:,3);
data(:,3)=[];
%K=numel(unique(datalabels))-1;
DM=pdist2(data,data);
[idx,idx1]=TorqueClustering(DM,0,1);
NC=numel(unique(idx1))-1,NM=nmi(idx1,datalabels)


disp('Overlap1')
clear;
data=importdata('s1.data');
datalabels=importdata('s1.labels0');
%K=numel(unique(datalabels));
DM=pdist2(data,data);
[idx]=TorqueClustering(DM,0);
NC=numel(unique(idx)),NM=nmi(idx,datalabels)


disp('Overlap2')
clear;
data=importdata('s2.data');
datalabels=importdata('s2.labels0');
%K=numel(unique(datalabels));
DM=pdist2(data,data);
[idx]=TorqueClustering(DM,0);
NC=numel(unique(idx)),NM=nmi(idx,datalabels)

disp('Overlap3')
clear;
data=importdata('s3.data');
datalabels=importdata('s3.labels0');
%K=numel(unique(datalabels));
DM=pdist2(data,data);
[idx]=TorqueClustering(DM,0);
NC=numel(unique(idx)),NM=nmi(idx,datalabels)

disp('Overlap4')
clear;
data=importdata('s4.data');
datalabels=importdata('s4.labels0');
%K=numel(unique(datalabels));
DM=pdist2(data,data);
[idx]=TorqueClustering(DM,0);
NC=numel(unique(idx)),NM=nmi(idx,datalabels)

disp('Outliers1')
clear;
data=importdata('2d-20c-no0.arff');
data=data.data;
datalabels=data(:,3);
data(:,3)=[];
%K=numel(unique(datalabels));
DM=pdist2(data,data);
[idx]=TorqueClustering(DM,0);
NC=numel(unique(idx)),NM=nmi(idx,datalabels)

disp('Outliers2')
clear;
data=importdata('2d-4c-no4.arff');
data=data.data;
datalabels=data(:,3);
data(:,3)=[];
%K=numel(unique(datalabels));
DM=pdist2(data,data);
[idx]=TorqueClustering(DM,0);
NC=numel(unique(idx)),NM=nmi(idx,datalabels)

disp('Outliers3')
clear;
data=importdata('DS-850.txt');
datalabels=data(:,3);
data(:,3)=[];
%K=numel(unique(datalabels));
DM=pdist2(data,data);
[idx]=TorqueClustering(DM,0);
NC=numel(unique(idx)),NM=nmi(idx,datalabels)


disp('Outliers4')
clear;
data=importdata('D31.arff');
data=data.data;
datalabels=data(:,3);
data(:,3)=[];
%K=numel(unique(datalabels));
DM=pdist2(data,data);
[idx]=TorqueClustering(DM,0);
NC=numel(unique(idx)),NM=nmi(idx,datalabels)

disp('Outliers5')
clear;
data=importdata('R15.arff');
data=data.data;
datalabels=data(:,3);
data(:,3)=[];
%K=numel(unique(datalabels));
DM=pdist2(data,data);
[idx]=TorqueClustering(DM,0);
NC=numel(unique(idx)),NM=nmi(idx,datalabels)

disp('Outliers6')
clear;
data=importdata('2d-10c.arff');
data=data.data;
datalabels=data(:,3);
data(:,3)=[];
%K=numel(unique(datalabels));
DM=pdist2(data,data);
[idx]=TorqueClustering(DM,0);
NC=numel(unique(idx)),NM=nmi(idx,datalabels)

disp('Outliers7')
clear;
data=importdata('insect.txt');
datalabels=data(:,4);
data(:,4)=[];
%K=numel(unique(datalabels));
DM=pdist2(data,data);
[idx]=TorqueClustering(DM,0);
NC=numel(unique(idx)),NM=nmi(idx,datalabels)


disp('Outliers8')
clear;
data=importdata('longsquare.arff');
data=data.data;
datalabels=data(:,3);
data(:,3)=[];
%K=numel(unique(datalabels));
DM=pdist2(data,data);
[idx]=TorqueClustering(DM,0);
NC=numel(unique(idx)),NM=nmi(idx,datalabels)


disp('Outliers9')
clear;
data=importdata('square4.arff');
data=data.data;
datalabels=data(:,3);
data(:,3)=[];
%K=numel(unique(datalabels));
DM=pdist2(data,data);
[idx]=TorqueClustering(DM,0);
NC=numel(unique(idx)),NM=nmi(idx,datalabels)

disp('Outliers10')
clear;
data=importdata('tetra.arff');
data=data.data;
datalabels=data(:,4);
data(:,4)=[];
%K=numel(unique(datalabels));
DM=pdist2(data,data);
[idx]=TorqueClustering(DM,0);
NC=numel(unique(idx)),NM=nmi(idx,datalabels)


disp('Outliers11')
clear;
data=importdata('triangle2.arff');
data=data.data;
datalabels=data(:,3);
data(:,3)=[];
%K=numel(unique(datalabels));
DM=pdist2(data,data);
[idx]=TorqueClustering(DM,0);
NC=numel(unique(idx)),NM=nmi(idx,datalabels)


disp('Other1')
clear;
data=importdata('chainlink.arff');
data=data.data;
datalabels=data(:,4);
data(:,4)=[];
%K=numel(unique(datalabels));
DM=pdist2(data,data);
[idx]=TorqueClustering(DM,0);
NC=numel(unique(idx)),NM=nmi(idx,datalabels)



disp('Other2')
clear;
data=importdata('compound.arff');
data=data.data;
datalabels=data(:,3);
data(:,3)=[];
%K=numel(unique(datalabels));
DM=pdist2(data,data);
[idx]=TorqueClustering(DM,0);
NC=numel(unique(idx)),NM=nmi(idx,datalabels)


disp('Other3')
clear;
data=importdata('diamond9.arff');
data=data.data;
datalabels=data(:,3);
data(:,3)=[];
%K=numel(unique(datalabels));
DM=pdist2(data,data);
[idx]=TorqueClustering(DM,0);
NC=numel(unique(idx)),NM=nmi(idx,datalabels)


disp('Other4')
clear;
data=importdata('ds4c2sc8.arff');
data=data.data;
datalabels=data(:,3);
data(:,3)=[];
%K=numel(unique(datalabels));
DM=pdist2(data,data);
[idx]=TorqueClustering(DM,0);
NC=numel(unique(idx)),NM=nmi(idx,datalabels)


disp('Other5')
clear;
data=importdata('lsun.arff');
data=data.data;
datalabels=data(:,3);
data(:,3)=[];
%K=numel(unique(datalabels));
DM=pdist2(data,data);
[idx]=TorqueClustering(DM,0);
NC=numel(unique(idx)),NM=nmi(idx,datalabels)


disp('Other6')
clear;
data=importdata('wingnut.arff');
data=data.data;
datalabels=data(:,3);
data(:,3)=[];
%K=numel(unique(datalabels));
DM=pdist2(data,data);
[idx]=TorqueClustering(DM,0);
NC=numel(unique(idx)),NM=nmi(idx,datalabels)


disp('Other7')
clear;
data=importdata('zelnik3.arff');
data=data.data;
datalabels=data(:,3);
data(:,3)=[];
%K=numel(unique(datalabels));
DM=pdist2(data,data);
[idx]=TorqueClustering(DM,0);
NC=numel(unique(idx)),NM=nmi(idx,datalabels)


disp('Other8')
clear;
data=importdata('zelnik5.arff');
data=data.data;
datalabels=data(:,3);
data(:,3)=[];
%K=numel(unique(datalabels));
DM=pdist2(data,data);
[idx]=TorqueClustering(DM,0);
NC=numel(unique(idx)),NM=nmi(idx,datalabels)


disp('Other9')
clear;
data=importdata('banana.txt');
datalabels=data(:,3);
data(:,3)=[];
%K=numel(unique(datalabels));
DM=pdist2(data,data);
[idx]=TorqueClustering(DM,0);
NC=numel(unique(idx)),NM=nmi(idx,datalabels)



disp('TC results on 9 unbalanced datasets, s=(0.1:0.1:0.9)')
clear;
data=importdata('samdata1.mat');
datalabels=importdata('samlabels1.mat');
for i=1:1:9
DM=pdist2(data{i},data{i});  idx=TorqueClustering(DM,0); NM(i,1)=nmi(idx,datalabels{i}); NC(i,1)=numel(unique(idx));
end
NM, NC


disp('TC results on 15 gene expression datasets')



disp('alizadeh-2000-v2_database.mat')
clear;
load('alizadeh-2000-v2_database.mat')
datalabels=double(gtlabels)';
data=double(X);
DM=pdist2(data,data,'cosine');
for i=1:1:size(DM,1)
DM(i,i)=-inf;
end
[idx]=TorqueClustering(DM,0);
NM=nmi(idx,datalabels),NC=numel(unique(idx))


disp('alizadeh-2000-v3_database.mat')
clear;
load('alizadeh-2000-v3_database.mat')
datalabels=double(gtlabels)';
data=double(X);
DM=pdist2(data,data,'cosine');
for i=1:1:size(DM,1)
DM(i,i)=-inf;
end
[idx]=TorqueClustering(DM,0);
NM=nmi(idx,datalabels),NC=numel(unique(idx))





disp('armstrong-2002-v2_database.mat')
clear;
load('armstrong-2002-v2_database.mat')
datalabels=double(gtlabels)';
data=double(X);
DM=pdist2(data,data,'cosine');
for i=1:1:size(DM,1)
DM(i,i)=-inf;
end
[idx]=TorqueClustering(DM,0);
NM=nmi(idx,datalabels),NC=numel(unique(idx))





disp('bittner-2000_database.mat')
clear;
load('bittner-2000_database.mat')
datalabels=double(gtlabels)';
data=double(X);
DM=pdist2(data,data,'cosine');
for i=1:1:size(DM,1)
DM(i,i)=-inf;
end
[idx]=TorqueClustering(DM,0);
NM=nmi(idx,datalabels),NC=numel(unique(idx))



disp('golub-1999-v1_database.mat')
clear;
load('golub-1999-v1_database.mat')
datalabels=double(gtlabels)';
data=double(X);
DM=pdist2(data,data,'cosine');
for i=1:1:size(DM,1)
DM(i,i)=-inf;
end
[idx]=TorqueClustering(DM,0);
NM=nmi(idx,datalabels),NC=numel(unique(idx))




disp('gordon-2002_database.mat')
clear;
load('gordon-2002_database.mat')
datalabels=double(gtlabels)';
data=double(X);
DM=pdist2(data,data,'cosine');
for i=1:1:size(DM,1)
DM(i,i)=-inf;
end
[idx]=TorqueClustering(DM,0);
NM=nmi(idx,datalabels),NC=numel(unique(idx))


disp('laiho-2007_database.mat')
clear;
load('laiho-2007_database.mat')
datalabels=double(gtlabels)';
data=double(X);
DM=pdist2(data,data,'cosine');
for i=1:1:size(DM,1)
DM(i,i)=-inf;
end
[idx]=TorqueClustering(DM,0);
NM=nmi(idx,datalabels),NC=numel(unique(idx))


disp('lapointe-2004-v1_database.mat')
clear;
load('lapointe-2004-v1_database.mat')
datalabels=double(gtlabels)';
data=double(X);
DM=pdist2(data,data,'cosine');
for i=1:1:size(DM,1)
DM(i,i)=-inf;
end
[idx]=TorqueClustering(DM,0);
NM=nmi(idx,datalabels),NC=numel(unique(idx))




disp('liang-2005_database.mat')
clear;
load('liang-2005_database.mat')
datalabels=double(gtlabels)';
data=double(X);
DM=pdist2(data,data,'cosine');
for i=1:1:size(DM,1)
DM(i,i)=-inf;
end
[idx]=TorqueClustering(DM,0);
NM=nmi(idx,datalabels),NC=numel(unique(idx))




disp('nutt-2003-v3_database.mat')
clear;
load('nutt-2003-v3_database.mat')
datalabels=double(gtlabels)';
data=double(X);
DM=pdist2(data,data,'cosine');
for i=1:1:size(DM,1)
DM(i,i)=-inf;
end
[idx]=TorqueClustering(DM,0);
NM=nmi(idx,datalabels),NC=numel(unique(idx))


disp('pomeroy-2002-v1_database.mat')
clear
load('pomeroy-2002-v1_database.mat')
datalabels=double(gtlabels)';
data=double(X);
DM=pdist2(data,data,'cosine');
for i=1:1:size(DM,1)
DM(i,i)=-inf;
end
[idx]=TorqueClustering(DM,0);
NM=nmi(idx,datalabels),NC=numel(unique(idx))




disp('shipp-2002-v1_database.mat')
clear
load('shipp-2002-v1_database.mat')
datalabels=double(gtlabels)';
data=double(X);
DM=pdist2(data,data,'cosine');
for i=1:1:size(DM,1)
DM(i,i)=-inf;
end
[idx]=TorqueClustering(DM,0);
NM=nmi(idx,datalabels),NC=numel(unique(idx))




disp('tomlins-2006-v2_database.mat')
clear
load('tomlins-2006-v2_database.mat')
datalabels=double(gtlabels)';
data=double(X);
DM=pdist2(data,data,'cosine');
for i=1:1:size(DM,1)
DM(i,i)=-inf;
end
[idx]=TorqueClustering(DM,0);
NM=nmi(idx,datalabels),NC=numel(unique(idx))


disp('tomlins-2006_database.mat')
clear
load('tomlins-2006_database.mat')
datalabels=double(gtlabels)';
data=double(X);
DM=pdist2(data,data,'cosine');
for i=1:1:size(DM,1)
DM(i,i)=-inf;
end
[idx]=TorqueClustering(DM,0);
NM=nmi(idx,datalabels),NC=numel(unique(idx))

disp('west-2001_database.mat')
clear
load('west-2001_database.mat')
datalabels=double(gtlabels)';
data=double(X);
DM=pdist2(data,data,'cosine');
for i=1:1:size(DM,1)
DM(i,i)=-inf;
end
[idx]=TorqueClustering(DM,0);
NM=nmi(idx,datalabels),NC=numel(unique(idx))


