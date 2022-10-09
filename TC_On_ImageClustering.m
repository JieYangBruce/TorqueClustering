addpath(genpath('../data'))
disp('TC clustering results on several challenge image datasets')


clear;
disp('For Pendigits data set:')
data=importdata('pendigits_ALL.mat');
datalabels=importdata('pendigits_ALLlabels.mat');
DM=pdist2(data,data,'cosine');
[idx]=TorqueClustering(DM,0);
NM=nmi(idx,datalabels)


clear;
disp('For COIL-20 data set:')
data = h5read('COIL-20.h5','/data');
datalabels=h5read('COIL-20.h5','/labels');
data1=zeros(1440,128*128*1);
for i=1:1:1440
data1(i,:)=reshape(data(:,:,:,i),1,128*128*1);
end
data=data1;
datalabels=double(datalabels);
DM=pdist2(data,data,'cosine');
for i=1:1:size(DM,1)
DM(i,i)=-inf;
end
[idx]=TorqueClustering(DM,0);
NM=nmi(idx,datalabels)


clear;
disp('For UMist data set:')
data = h5read('UMist.h5','/data');
datalabels=h5read('UMist.h5','/labels');
data1=zeros(575,112*92*1);
for i=1:1:575
data1(i,:)=reshape(data(:,:,:,i),1,112*92*1);
end
data=data1;
datalabels=double(datalabels);
DM=pdist2(data,data,'cosine');
for i=1:1:size(DM,1)
DM(i,i)=-inf;
end
[idx]=TorqueClustering(DM,0);
NM=nmi(idx,datalabels)

clear;
disp('For FRGC data set:')
data=importdata('FRGC.mat');
datalabels=data.datalabels;
data=data.data;
DM=pdist2(data,data,'cosine');[idx]=TorqueClustering(DM,0); 
NM=nmi(idx,datalabels)


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
NM=nmi(idx,datalabels)

clear
disp('For Coil40 data set:')
data=importdata('Coil40.mat');
datalabels=data.gt;
data=data.data;
DM=pdist2(data,data,'cosine');
idx=TorqueClustering(DM,0);NM = nmi(idx,datalabels)





