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



addpath(genpath('../data'))





clear;
disp('For Highly overlapping data set:')
data=importdata('data1.mat');
datalabels=data(:,3)+1;
data(:,3)=[];
DM=pdist2(data,data);[idx]=TorqueClustering(DM,0,0,1); NC=numel(unique(idx)), 
[NMI,AC]=evaluatecluster(idx,datalabels)
AMI = ami(datalabels,idx)
fname=['..\results\','Fig.S3A','.png'];
saveas(gcf,fname);

clear;
disp('For FLAME data set:')
data=importdata('data2.mat');
datalabels=data(:,3)+1;
data(:,3)=[];
DM=pdist2(data,data);[idx]=TorqueClustering(DM,0,0,1); NC=numel(unique(idx)), 
[NMI,AC]=evaluatecluster(idx,datalabels)
AMI = ami(datalabels,idx)
fname=['..\results\','Fig.S3B','.png'];
saveas(gcf,fname);


clear;
disp('For Spectral-path data set:')
data=importdata('data3.mat');
datalabels=data(:,3);
data(:,3)=[];
DM=pdist2(data,data);[idx]=TorqueClustering(DM,0,0,1); NC=numel(unique(idx)), 
[NMI,AC]=evaluatecluster(idx,datalabels)
AMI = ami(datalabels,idx)
fname=['..\results\','Fig.S3C','.png'];
saveas(gcf,fname);


clear;
disp('For Unbalanced data set:')
data=importdata('data4.mat');
datalabels=data(:,3)+1;
data(:,3)=[];
DM=pdist2(data,data);[idx]=TorqueClustering(DM,0,0,1); NC=numel(unique(idx)), 
[NMI,AC]=evaluatecluster(idx, datalabels)
AMI = ami(datalabels,idx)
fname=['..\results\','Fig.S3D','.png'];
saveas(gcf,fname);


clear;
disp('For Noisy data set:')
data=importdata('data5.dat');
DM=pdist2(data,data);[idx]=TorqueClustering(DM,0,0,1); NC=numel(unique(idx)),
fname=['..\results\','Fig.S3E','.png'];
saveas(gcf,fname);


clear;
disp('For Heterogeneous geometric data set:')
data=importdata('data6.mat');
datalabels=data(:,3);
data(:,3)=[];
DM=pdist2(data,data);[idx]=TorqueClustering(DM,0,0,1); NC=numel(unique(idx)), 
[NMI,AC]=evaluatecluster(idx,datalabels)
AMI = ami(datalabels,idx)
fname=['..\results\','Fig.S3F','.png'];
saveas(gcf,fname);


clear;
disp('For Multi-objective 1 data set:')
data=importdata('data7.mat');
datalabels=data(:,3)+1;
data(:,3)=[];
DM=pdist2(data,data);[idx]=TorqueClustering(DM,0,0,1); NC=numel(unique(idx)), 
[NMI,AC]=evaluatecluster(idx,datalabels)
AMI = ami(datalabels,idx)
fname=['..\results\','Fig.S3G','.png'];
saveas(gcf,fname);


clear;
disp('For Multi-objective 2 data set:')
data=importdata('data8.mat');
datalabels=data(:,3)+1;
data(:,3)=[];
DM=pdist2(data,data);[idx]=TorqueClustering(DM,0,0,1); NC=numel(unique(idx)), 
[NMI,AC]=evaluatecluster(idx,datalabels)
AMI = ami(datalabels,idx)
fname=['..\results\','Fig.S3H','.png'];
saveas(gcf,fname);


clear;
disp('For Multi-objective 3 data set:')
data=importdata('data9.mat');
datalabels=data(:,3)+1;
data(:,3)=[];
DM=pdist2(data,data);[idx]=TorqueClustering(DM,0,0,1); NC=numel(unique(idx)), 
[NMI,AC]=evaluatecluster(idx,datalabels)
AMI = ami(datalabels,idx)
fname=['..\results\','Fig.S3I','.png'];
saveas(gcf,fname);


clear;
disp('For YTF data set:')
data = importdata('YTFdb.mat');
datalabels=data.datalabels;
data=data.data;
DM=pdist2(data,data,'cosine');
[idx]=TorqueClustering(DM,0); NC=numel(unique(idx)), [NMI,AC]=evaluatecluster(idx,datalabels)
AMI = ami(datalabels,idx)



clear;
disp('For MNIST70k data set:')
data=importdata('MNIST_UMAP.mat');
datalabels=data.datalabels;data=data.data;
DM=pdist2(data,data);
[idx]=TorqueClustering(DM,0); NC=numel(unique(idx)), 
[NMI,AC]=evaluatecluster(idx,datalabels)
AMI = ami(datalabels,idx)


clear;
disp('For COIL-100 data set:')
data=importdata('Coil100.mat');
datalabels=double(data.gtlabels)';
data=double(data.X);
datalabels=datalabels+1;
tic,DM=pdist2_fast(data,data,'cosine');
[idx]=TorqueClustering(DM,0); 
toc
NC=numel(unique(idx)), 
[NMI,AC]=evaluatecluster(idx,datalabels)
AMI = ami(datalabels,idx)


clear;
disp('For Shuttle data set:')
data=importdata('shuttle.mat');
datalabels=double(data.gtlabels)';
data=double(data.X);
datalabels=datalabels+1;
DM=pdist2(data,data,'cosine');
[idx]=TorqueClustering(DM,0); NC=numel(unique(idx)) 
[NMI,AC]=evaluatecluster(idx,datalabels)
AMI = ami(datalabels,idx)


clear;
disp('For RNA-Seq data set:')
data=importdata('gene_data.mat');
datalabels=importdata('gene_datalabels.mat');
DM=pdist2(data,data,'cosine');[idx]=TorqueClustering(DM,0); NC=numel(unique(idx)),
[NMI,AC]=evaluatecluster(idx,datalabels)
AMI = ami(datalabels,idx)


clear;
disp('For Haberman data set:')
data=importdata('haberman.txt');
datalabels=data(:,4);
data(:,4)=[];
DM=pdist2(data,data,'cosine');[idx]=TorqueClustering(DM,0); NC=numel(unique(idx)), 
[NMI,AC]=evaluatecluster(idx,datalabels)
AMI = ami(datalabels,idx)


clear;
disp('For Zoo data set:')
data=importdata('zoo.mat');
datalabels=data.datalabels;
data=data.data;
DM=pdist2(data,data,'cosine');[idx]=TorqueClustering(DM,0); NC=numel(unique(idx)),
[NMI,AC]=evaluatecluster(idx,datalabels)
AMI = ami(datalabels,idx)



clear;
disp('For S.disease data set:')
data=importdata('soybean.mat');
datalabels=data.datalabels;
data=data.data;
DM=pdist2(data,data,'cosine');[idx]=TorqueClustering(DM,0); NC=numel(unique(idx)), 
[NMI,AC]=evaluatecluster(idx,datalabels)
AMI = ami(datalabels,idx)


clear;
disp('For Cell.track data set:')
data=importdata('celltrack.mat');
datalabels=data.datalabels;
data=data.data;
DM=pdist2(data,data,'cosine');[idx]=TorqueClustering(DM,0); 
NC=numel(unique(idx)),
[NMI,AC]=evaluatecluster(idx,datalabels)
AMI = ami(datalabels,idx)


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
DM=pdist2(data,data,'cosine');
for i=1:1:size(DM,1)
DM(i,i)=-inf;
end
[idx]=TorqueClustering(DM,0);
NC=numel(unique(idx)),
[NMI,AC]=evaluatecluster(idx,datalabels+1)
AMI = ami(datalabels,idx)


clear;
disp('For CMU-PIE 11k data set:')
data=importdata('CMUPIE11k.mat');
datalabels=data.datalabels;
data=data.data;
DM=pdist2(data,data,'cosine');[idx]=TorqueClustering(DM,0); 
NC=numel(unique(idx)),
[NMI,AC]=evaluatecluster(idx,datalabels)
AMI = ami(datalabels,idx)

clear;
disp('For Reuters data set:')
data=importdata('reuters.mat');
datalabels=data.datalabels;
data=data.data;
DM=pdist2(data,data,'cosine');[idx]=TorqueClustering(DM,0); 
NC=numel(unique(idx)),
[NMI,AC]=evaluatecluster(idx,datalabels)
AMI = ami(datalabels,idx)





clear
data=importdata('Fig3.mat');
datalabels=data(:,end);
data(:,end)=[];
DM=pdist2(data,data);
[Idx,Idx1]=TorqueClustering(DM,0,1);
AC=accuracy(datalabels+1,Idx1+1)/100

clear
data=importdata('Fig4.mat');
datalabels=data.gt;
data=data.data;
DM=pdist2(data,data);
[Idx]=TorqueClustering(DM,0);
AC=accuracy(datalabels+1,Idx)/100

