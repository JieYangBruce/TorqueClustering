%addpath(genpath('../data'))

%%%%%%%%%%%%AP clustering on synthetic data sets
clear;
disp('For Highly overlapping data set:')
data=importdata('data1.mat');
datalabels=data(:,3)+1;
data(:,3)=[];
DM=pdist2(data,data);
S=-DM;
DM1=DM;
for i=1:size(data,1)
DM1(i,i)=0;
end
PDM1=squareform(DM1);
p=median(-PDM1);
CL = cell(1,4);
dampfact = [0.6,0.7,0.8,0.9];

parfor i=1:4
tic
[CL{i}]=apcluster(S,p,'dampfact',dampfact(i));
toc
end

%[NM,AC]=evaluatecluster(idx,datalabels)
%NM=nmi(idx,datalabels),AC=accuracy_A(datalabels,idx)/100
%NC=numel(unique(idx))
%fname=['..\results\','Fig.S3A','.png'];
%saveas(gcf,fname);
clear i;
for j=1:1:4
    idx = CL{j};
    uni=unique(idx);idx1=zeros(size(idx));
for i=1:1:length(uni)
idx1(find(idx==uni(i)))=i;
end
NC(j)=numel(unique(idx));AM(j)=ami(idx,datalabels);NM(j)=nmi(idx,datalabels);AC(j)=accuracy_1(datalabels,idx1)/100;
end
max_AM=max(AM),loc=find(max_AM==AM);max_NM = NM(loc(1)),max_AC=AC(loc(1)),
fNC = NC(loc(1)), optpara = dampfact(loc(1))


clear;
disp('For FLAME data set:')
data=importdata('data2.mat');
datalabels=data(:,3)+1;
data(:,3)=[];
DM=pdist2(data,data);
S=-DM;
DM1=DM;
for i=1:size(data,1)
DM1(i,i)=0;
end
PDM1=squareform(DM1);
p=median(-PDM1);
CL = cell(1,4);
dampfact = [0.6,0.7,0.8,0.9];

parfor i=1:4
tic
[CL{i}]=apcluster(S,p,'dampfact',dampfact(i));
toc
end

%[NM,AC]=evaluatecluster(idx,datalabels)
%NM=nmi(idx,datalabels),AC=accuracy_A(datalabels,idx)/100
%NC=numel(unique(idx))
%fname=['..\results\','Fig.S3A','.png'];
%saveas(gcf,fname);
clear i;
for j=1:1:4
    idx = CL{j};
    uni=unique(idx);idx1=zeros(size(idx));
for i=1:1:length(uni)
idx1(find(idx==uni(i)))=i;
end
NC(j)=numel(unique(idx));AM(j)=ami(idx,datalabels);NM(j)=nmi(idx,datalabels);AC(j)=accuracy_1(datalabels,idx1)/100;
end
max_AM=max(AM),loc=find(max_AM==AM);max_NM = NM(loc(1)),max_AC=AC(loc(1)),
fNC = NC(loc(1)), optpara = dampfact(loc(1))


clear;
disp('For Spectral-path data set:')
data=importdata('data3.mat');
datalabels=data(:,3);
data(:,3)=[];
DM=pdist2(data,data);
S=-DM;
DM1=DM;
for i=1:size(data,1)
DM1(i,i)=0;
end
PDM1=squareform(DM1);
p=median(-PDM1);
CL = cell(1,4);
dampfact = [0.6,0.7,0.8,0.9];

parfor i=1:4
tic
[CL{i}]=apcluster(S,p,'dampfact',dampfact(i));
toc
end

%[NM,AC]=evaluatecluster(idx,datalabels)
%NM=nmi(idx,datalabels),AC=accuracy_A(datalabels,idx)/100
%NC=numel(unique(idx))
%fname=['..\results\','Fig.S3A','.png'];
%saveas(gcf,fname);
clear i;
for j=1:1:4
    idx = CL{j};
    uni=unique(idx);idx1=zeros(size(idx));
for i=1:1:length(uni)
idx1(find(idx==uni(i)))=i;
end
NC(j)=numel(unique(idx));AM(j)=ami(idx,datalabels);NM(j)=nmi(idx,datalabels);AC(j)=accuracy_1(datalabels,idx1)/100;
end
max_AM=max(AM),loc=find(max_AM==AM);max_NM = NM(loc(1)),max_AC=AC(loc(1)),
fNC = NC(loc(1)), optpara = dampfact(loc(1))


clear;
disp('For Unbalanced data set:')
data=importdata('data4.mat');
datalabels=data(:,3)+1;
data(:,3)=[];
DM=pdist2(data,data);
S=-DM;
DM1=DM;
for i=1:size(data,1)
DM1(i,i)=0;
end
PDM1=squareform(DM1);
p=median(-PDM1);
CL = cell(1,4);
dampfact = [0.6,0.7,0.8,0.9];

parfor i=1:4
tic
[CL{i}]=apcluster(S,p,'dampfact',dampfact(i));
toc
end

%[NM,AC]=evaluatecluster(idx,datalabels)
%NM=nmi(idx,datalabels),AC=accuracy_A(datalabels,idx)/100
%NC=numel(unique(idx))
%fname=['..\results\','Fig.S3A','.png'];
%saveas(gcf,fname);
clear i;
for j=1:1:4
    idx = CL{j};
    uni=unique(idx);idx1=zeros(size(idx));
for i=1:1:length(uni)
idx1(find(idx==uni(i)))=i;
end
NC(j)=numel(unique(idx));AM(j)=ami(idx,datalabels);NM(j)=nmi(idx,datalabels);AC(j)=accuracy_1(datalabels,idx1)/100;
end
max_AM=max(AM),loc=find(max_AM==AM);max_NM = NM(loc(1)),max_AC=AC(loc(1)),
fNC = NC(loc(1)), optpara = dampfact(loc(1))


clear;
disp('For Heterogeneous geometric data set:')
data=importdata('data6.mat');
datalabels=data(:,3);
data(:,3)=[];
DM=pdist2(data,data);
S=-DM;
DM1=DM;
for i=1:size(data,1)
DM1(i,i)=0;
end
PDM1=squareform(DM1);
p=median(-PDM1);
CL = cell(1,4);
dampfact = [0.6,0.7,0.8,0.9];

parfor i=1:4
tic
[CL{i}]=apcluster(S,p,'dampfact',dampfact(i));
toc
end

%[NM,AC]=evaluatecluster(idx,datalabels)
%NM=nmi(idx,datalabels),AC=accuracy_A(datalabels,idx)/100
%NC=numel(unique(idx))
%fname=['..\results\','Fig.S3A','.png'];
%saveas(gcf,fname);
clear i;
for j=1:1:4
    idx = CL{j};
    uni=unique(idx);idx1=zeros(size(idx));
for i=1:1:length(uni)
idx1(find(idx==uni(i)))=i;
end
NC(j)=numel(unique(idx));AM(j)=ami(idx,datalabels);NM(j)=nmi(idx,datalabels);AC(j)=accuracy_1(datalabels,idx1)/100;
end
max_AM=max(AM),loc=find(max_AM==AM);max_NM = NM(loc(1)),max_AC=AC(loc(1)),
fNC = NC(loc(1)), optpara = dampfact(loc(1))


clear;
disp('For Multi-objective 1 data set:')
data=importdata('data7.mat');
datalabels=data(:,3)+1;
data(:,3)=[];
DM=pdist2(data,data);
S=-DM;
DM1=DM;
for i=1:size(data,1)
DM1(i,i)=0;
end
PDM1=squareform(DM1);
p=median(-PDM1);
CL = cell(1,4);
dampfact = [0.6,0.7,0.8,0.9];

parfor i=1:4
tic
[CL{i}]=apcluster(S,p,'dampfact',dampfact(i));
toc
end

%[NM,AC]=evaluatecluster(idx,datalabels)
%NM=nmi(idx,datalabels),AC=accuracy_A(datalabels,idx)/100
%NC=numel(unique(idx))
%fname=['..\results\','Fig.S3A','.png'];
%saveas(gcf,fname);
clear i;
for j=1:1:4
    idx = CL{j};
    uni=unique(idx);idx1=zeros(size(idx));
for i=1:1:length(uni)
idx1(find(idx==uni(i)))=i;
end
NC(j)=numel(unique(idx));AM(j)=ami(idx,datalabels);NM(j)=nmi(idx,datalabels);AC(j)=accuracy_1(datalabels,idx1)/100;
end
max_AM=max(AM),loc=find(max_AM==AM);max_NM = NM(loc(1)),max_AC=AC(loc(1)),
fNC = NC(loc(1)), optpara = dampfact(loc(1))



clear;
disp('For Multi-objective 2 data set:')
data=importdata('data8.mat');
datalabels=data(:,3)+1;
data(:,3)=[];
DM=pdist2(data,data);
S=-DM;
DM1=DM;
for i=1:size(data,1)
DM1(i,i)=0;
end
PDM1=squareform(DM1);
p=median(-PDM1);
CL = cell(1,4);
dampfact = [0.6,0.7,0.8,0.9];

parfor i=1:4
tic
[CL{i}]=apcluster(S,p,'dampfact',dampfact(i));
toc
end

%[NM,AC]=evaluatecluster(idx,datalabels)
%NM=nmi(idx,datalabels),AC=accuracy_A(datalabels,idx)/100
%NC=numel(unique(idx))
%fname=['..\results\','Fig.S3A','.png'];
%saveas(gcf,fname);
clear i;
for j=1:1:4
    idx = CL{j};
    uni=unique(idx);idx1=zeros(size(idx));
for i=1:1:length(uni)
idx1(find(idx==uni(i)))=i;
end
NC(j)=numel(unique(idx));AM(j)=ami(idx,datalabels);NM(j)=nmi(idx,datalabels);AC(j)=accuracy_1(datalabels,idx1)/100;
end
max_AM=max(AM),loc=find(max_AM==AM);max_NM = NM(loc(1)),max_AC=AC(loc(1)),
fNC = NC(loc(1)), optpara = dampfact(loc(1))



clear;
disp('For Multi-objective 3 data set:')
data=importdata('data9.mat');
datalabels=data(:,3)+1;
data(:,3)=[];
DM=pdist2(data,data);
S=-DM;
DM1=DM;
for i=1:size(data,1)
DM1(i,i)=0;
end
PDM1=squareform(DM1);
p=median(-PDM1);
CL = cell(1,4);
dampfact = [0.6,0.7,0.8,0.9];

parfor i=1:4
tic
[CL{i}]=apcluster(S,p,'dampfact',dampfact(i));
toc
end

%[NM,AC]=evaluatecluster(idx,datalabels)
%NM=nmi(idx,datalabels),AC=accuracy_A(datalabels,idx)/100
%NC=numel(unique(idx))
%fname=['..\results\','Fig.S3A','.png'];
%saveas(gcf,fname);
clear i;
for j=1:1:4
    idx = CL{j};
    uni=unique(idx);idx1=zeros(size(idx));
for i=1:1:length(uni)
idx1(find(idx==uni(i)))=i;
end
NC(j)=numel(unique(idx));AM(j)=ami(idx,datalabels);NM(j)=nmi(idx,datalabels);AC(j)=accuracy_1(datalabels,idx1)/100;
end
max_AM=max(AM),loc=find(max_AM==AM);max_NM = NM(loc(1)),max_AC=AC(loc(1)),
fNC = NC(loc(1)), optpara = dampfact(loc(1))

%%%%%%%%%%%%AP clustering on real-world data sets
clear
commandhistory
disp('YTF dataset');
data=importdata('YTFdb.mat');
datalabels=data.datalabels;
data=data.data;
K=numel(unique(datalabels));
DM=pdist2(data,data,'cosine');
S=-DM;
DM1=DM;
for i=1:size(data,1)
DM1(i,i)=0;
end
PDM1=squareform(DM1);
p=median(-PDM1);
CL = cell(1,4);
dampfact = [0.6,0.7,0.8,0.9];

parfor i=1:4
tic
[CL{i}]=apcluster(S,p,'dampfact',dampfact(i));
toc
end

%[NM,AC]=evaluatecluster(idx,datalabels)
%NM=nmi(idx,datalabels),AC=accuracy_A(datalabels,idx)/100
%NC=numel(unique(idx))
%fname=['..\results\','Fig.S3A','.png'];
%saveas(gcf,fname);
clear i;
for j=1:1:4
    idx = CL{j};
    uni=unique(idx);idx1=zeros(size(idx));
for i=1:1:length(uni)
idx1(find(idx==uni(i)))=i;
end
NC(j)=numel(unique(idx));AM(j)=ami(idx,datalabels);NM(j)=nmi(idx,datalabels);AC(j)=accuracy_1(datalabels,idx1)/100;
end
max_AM=max(AM),loc=find(max_AM==AM);max_NM = NM(loc(1)),max_AC=AC(loc(1)),
fNC = NC(loc(1)), optpara = dampfact(loc(1))



clear;
disp('For MNIST_UMAP data set:')
data=importdata('MNIST_UMAP.mat');
datalabels=data.datalabels;
data=data.data;
DM=pdist2(data,data);
S=-DM;
DM1=DM;clear DM;
for i=1:size(data,1)
DM1(i,i)=0;
end
PDM1=squareform(DM1);clear DM1;
p=median(-PDM1);clear PDM1;
CL = cell(1,4);
dampfact = [0.6,0.7,0.8,0.9];

for i=1:4
tic
[CL{i}]=apcluster(S,p,'dampfact',dampfact(i));
toc
end

%[NM,AC]=evaluatecluster(idx,datalabels)
%NM=nmi(idx,datalabels),AC=accuracy_A(datalabels,idx)/100
%NC=numel(unique(idx))
%fname=['..\results\','Fig.S3A','.png'];
%saveas(gcf,fname);
clear i;
for j=1:1:4
    idx = CL{j};
    uni=unique(idx);idx1=zeros(size(idx));
for i=1:1:length(uni)
idx1(find(idx==uni(i)))=i;
end
NC(j)=numel(unique(idx));AM(j)=ami(idx,datalabels);NM(j)=nmi(idx,datalabels);AC(j)=accuracy_1(datalabels,idx1)/100;
end
max_AM=max(AM),loc=find(max_AM==AM);max_NM = NM(loc(1)),max_AC=AC(loc(1)),
fNC = NC(loc(1)), optpara = dampfact(loc(1))




clear;
disp('For COIL-100 data set:')
data=importdata('Coil100.mat');
datalabels=double(data.gtlabels)';
data=double(data.X);
datalabels=datalabels+1;
DM=pdist2(data,data,'cosine');
S=-DM;
DM1=DM;
for i=1:size(data,1)
DM1(i,i)=0;
end
PDM1=squareform(DM1);
p=median(-PDM1);
CL = cell(1,4);
dampfact = [0.6,0.7,0.8,0.9];

parfor i=1:4
tic
[CL{i}]=apcluster(S,p,'dampfact',dampfact(i));
toc
end

%[NM,AC]=evaluatecluster(idx,datalabels)
%NM=nmi(idx,datalabels),AC=accuracy_A(datalabels,idx)/100
%NC=numel(unique(idx))
%fname=['..\results\','Fig.S3A','.png'];
%saveas(gcf,fname);
clear i;
for j=1:1:4
    idx = CL{j};
    uni=unique(idx);idx1=zeros(size(idx));
for i=1:1:length(uni)
idx1(find(idx==uni(i)))=i;
end
NC(j)=numel(unique(idx));AM(j)=ami(idx,datalabels);NM(j)=nmi(idx,datalabels);AC(j)=accuracy_1(datalabels,idx1)/100;
end
max_AM=max(AM),loc=find(max_AM==AM);max_NM = NM(loc(1)),max_AC=AC(loc(1)),
fNC = NC(loc(1)), optpara = dampfact(loc(1))


clear;
disp('For Shuttle data set:')
data=importdata('shuttle.mat');
datalabels=double(data.gtlabels)';
data=double(data.X);
datalabels=datalabels+1;
DM=pdist2(data,data,'cosine');
S=-DM;
DM1=DM;clear DM;
for i=1:size(data,1)
DM1(i,i)=0;
end
PDM1=squareform(DM1);clear DM1;
p=median(-PDM1);clear PDM1;
CL = cell(1,4);
dampfact = [0.6,0.7,0.8,0.9];

for i=1:4
tic
[CL{i}]=apcluster(S,p,'dampfact',dampfact(i));
toc
end

%[NM,AC]=evaluatecluster(idx,datalabels)
%NM=nmi(idx,datalabels),AC=accuracy_A(datalabels,idx)/100
%NC=numel(unique(idx))
%fname=['..\results\','Fig.S3A','.png'];
%saveas(gcf,fname);
clear i;
for j=1:1:4
    idx = CL{j};
    uni=unique(idx);idx1=zeros(size(idx));
for i=1:1:length(uni)
idx1(find(idx==uni(i)))=i;
end
NC(j)=numel(unique(idx));AM(j)=ami(idx,datalabels);NM(j)=nmi(idx,datalabels);AC(j)=accuracy_1(datalabels,idx1)/100;
end
max_AM=max(AM),loc=find(max_AM==AM);max_NM = NM(loc(1)),max_AC=AC(loc(1)),
fNC = NC(loc(1)), optpara = dampfact(loc(1))


clear;
disp('For RNA-Seq data set:')
data=importdata('gene_data.mat');
datalabels=importdata('gene_datalabels.mat');
DM=pdist2(data,data,'cosine');
S=-DM;
DM1=DM;
for i=1:size(data,1)
DM1(i,i)=0;
end
PDM1=squareform(DM1);
p=median(-PDM1);
CL = cell(1,4);
dampfact = [0.6,0.7,0.8,0.9];

parfor i=1:4
tic
[CL{i}]=apcluster(S,p,'dampfact',dampfact(i));
toc
end

%[NM,AC]=evaluatecluster(idx,datalabels)
%NM=nmi(idx,datalabels),AC=accuracy_A(datalabels,idx)/100
%NC=numel(unique(idx))
%fname=['..\results\','Fig.S3A','.png'];
%saveas(gcf,fname);
clear i;
for j=1:1:4
    idx = CL{j};
    uni=unique(idx);idx1=zeros(size(idx));
for i=1:1:length(uni)
idx1(find(idx==uni(i)))=i;
end
NC(j)=numel(unique(idx));AM(j)=ami(idx,datalabels);NM(j)=nmi(idx,datalabels);AC(j)=accuracy_1(datalabels,idx1)/100;
end
max_AM=max(AM),loc=find(max_AM==AM);max_NM = NM(loc(1)),max_AC=AC(loc(1)),
fNC = NC(loc(1)), optpara = dampfact(loc(1))




clear;
disp('For Haberman data set:')
data=importdata('haberman.txt');
datalabels=data(:,4);
data(:,4)=[];
DM=pdist2(data,data,'cosine');
S=-DM;
DM1=DM;
for i=1:size(data,1)
DM1(i,i)=0;
end
PDM1=squareform(DM1);
p=median(-PDM1);
CL = cell(1,4);
dampfact = [0.6,0.7,0.8,0.9];

parfor i=1:4
tic
[CL{i}]=apcluster(S,p,'dampfact',dampfact(i));
toc
end

%[NM,AC]=evaluatecluster(idx,datalabels)
%NM=nmi(idx,datalabels),AC=accuracy_A(datalabels,idx)/100
%NC=numel(unique(idx))
%fname=['..\results\','Fig.S3A','.png'];
%saveas(gcf,fname);
clear i;
for j=1:1:4
    idx = CL{j};
    uni=unique(idx);idx1=zeros(size(idx));
for i=1:1:length(uni)
idx1(find(idx==uni(i)))=i;
end
NC(j)=numel(unique(idx));AM(j)=ami(idx,datalabels);NM(j)=nmi(idx,datalabels);AC(j)=accuracy_1(datalabels,idx1)/100;
end
max_AM=max(AM),loc=find(max_AM==AM);max_NM = NM(loc(1)),max_AC=AC(loc(1)),
fNC = NC(loc(1)), optpara = dampfact(loc(1))



clear;
disp('For Zoo data set:')
commandhistory
data=importdata('zoo.mat');
datalabels=data.datalabels;
data=data.data;
DM=pdist2(data,data,'cosine');
S=-DM;
DM1=DM;
for i=1:size(data,1)
DM1(i,i)=0;
end
PDM1=squareform(DM1);
p=median(-PDM1);
CL = cell(1,4);
dampfact = [0.6,0.7,0.8,0.9];

parfor i=1:4
tic
[CL{i}]=apcluster(S,p,'dampfact',dampfact(i));
toc
end

%[NM,AC]=evaluatecluster(idx,datalabels)
%NM=nmi(idx,datalabels),AC=accuracy_A(datalabels,idx)/100
%NC=numel(unique(idx))
%fname=['..\results\','Fig.S3A','.png'];
%saveas(gcf,fname);
clear i;
for j=1:1:4
    idx = CL{j};
    uni=unique(idx);idx1=zeros(size(idx));
for i=1:1:length(uni)
idx1(find(idx==uni(i)))=i;
end
NC(j)=numel(unique(idx));AM(j)=ami(idx,datalabels);NM(j)=nmi(idx,datalabels);AC(j)=accuracy_1(datalabels,idx1)/100;
end
max_AM=max(AM),loc=find(max_AM==AM);max_NM = NM(loc(1)),max_AC=AC(loc(1)),
fNC = NC(loc(1)), optpara = dampfact(loc(1))



clear;
disp('For Atom data set:')
data=importdata('atom.mat');
datalabels=importdata('atomlabels.mat');
DM=pdist2(data,data);
S=-DM;
DM1=DM;
for i=1:size(data,1)
DM1(i,i)=0;
end
PDM1=squareform(DM1);
p=median(-PDM1);
CL = cell(1,4);
dampfact = [0.6,0.7,0.8,0.9];

parfor i=1:4
tic
[CL{i}]=apcluster(S,p,'dampfact',dampfact(i));
toc
end

%[NM,AC]=evaluatecluster(idx,datalabels)
%NM=nmi(idx,datalabels),AC=accuracy_A(datalabels,idx)/100
%NC=numel(unique(idx))
%fname=['..\results\','Fig.S3A','.png'];
%saveas(gcf,fname);
clear i;
for j=1:1:4
    idx = CL{j};
    uni=unique(idx);idx1=zeros(size(idx));
for i=1:1:length(uni)
idx1(find(idx==uni(i)))=i;
end
NC(j)=numel(unique(idx));AM(j)=ami(idx,datalabels);NM(j)=nmi(idx,datalabels);AC(j)=accuracy_1(datalabels,idx1)/100;
end
max_AM=max(AM),loc=find(max_AM==AM);max_NM = NM(loc(1)),max_AC=AC(loc(1)),
fNC = NC(loc(1)), optpara = dampfact(loc(1))



clear;
disp('For S.disease data set:')
data=importdata('soybean.mat');
datalabels=data.datalabels;
data=data.data;
DM=pdist2(data,data,'cosine');
S=-DM;
DM1=DM;
for i=1:size(data,1)
DM1(i,i)=0;
end
PDM1=squareform(DM1);
p=median(-PDM1);
CL = cell(1,4);
dampfact = [0.6,0.7,0.8,0.9];

parfor i=1:4
tic
[CL{i}]=apcluster(S,p,'dampfact',dampfact(i));
toc
end

%[NM,AC]=evaluatecluster(idx,datalabels)
%NM=nmi(idx,datalabels),AC=accuracy_A(datalabels,idx)/100
%NC=numel(unique(idx))
%fname=['..\results\','Fig.S3A','.png'];
%saveas(gcf,fname);
clear i;
for j=1:1:4
    idx = CL{j};
    uni=unique(idx);idx1=zeros(size(idx));
for i=1:1:length(uni)
idx1(find(idx==uni(i)))=i;
end
NC(j)=numel(unique(idx));AM(j)=ami(idx,datalabels);NM(j)=nmi(idx,datalabels);AC(j)=accuracy_1(datalabels,idx1)/100;
end
max_AM=max(AM),loc=find(max_AM==AM);max_NM = NM(loc(1)),max_AC=AC(loc(1)),
fNC = NC(loc(1)), optpara = dampfact(loc(1))



clear;
disp('For Cell.track data set:')
data=importdata('celltrack.mat');
datalabels=data.datalabels;
data=data.data;
DM=pdist2(data,data,'cosine');
S=-DM;
DM1=DM;
for i=1:size(data,1)
DM1(i,i)=0;
end
PDM1=squareform(DM1);
p=median(-PDM1);
CL = cell(1,4);
dampfact = [0.6,0.7,0.8,0.9];

parfor i=1:4
tic
[CL{i}]=apcluster(S,p,'dampfact',dampfact(i));
toc
end

%[NM,AC]=evaluatecluster(idx,datalabels)
%NM=nmi(idx,datalabels),AC=accuracy_A(datalabels,idx)/100
%NC=numel(unique(idx))
%fname=['..\results\','Fig.S3A','.png'];
%saveas(gcf,fname);
clear i;
for j=1:1:4
    idx = CL{j};
    uni=unique(idx);idx1=zeros(size(idx));
for i=1:1:length(uni)
idx1(find(idx==uni(i)))=i;
end
NC(j)=numel(unique(idx));AM(j)=ami(idx,datalabels);NM(j)=nmi(idx,datalabels);AC(j)=accuracy_1(datalabels,idx1)/100;
end
max_AM=max(AM),loc=find(max_AM==AM);max_NM = NM(loc(1)),max_AC=AC(loc(1)),
fNC = NC(loc(1)), optpara = dampfact(loc(1))


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
S=-DM;
DM1=DM;
for i=1:size(data,1)
DM1(i,i)=0;
end
PDM1=squareform(DM1);
p=median(-PDM1);
CL = cell(1,4);
dampfact = [0.6,0.7,0.8,0.9];

parfor i=1:4
tic
[CL{i}]=apcluster(S,p,'dampfact',dampfact(i));
toc
end

%[NM,AC]=evaluatecluster(idx,datalabels)
%NM=nmi(idx,datalabels),AC=accuracy_A(datalabels,idx)/100
%NC=numel(unique(idx))
%fname=['..\results\','Fig.S3A','.png'];
%saveas(gcf,fname);
clear i;
for j=1:1:4
    idx = CL{j};
    uni=unique(idx);idx1=zeros(size(idx));
for i=1:1:length(uni)
idx1(find(idx==uni(i)))=i;
end
NC(j)=numel(unique(idx));AM(j)=ami(idx,datalabels);NM(j)=nmi(idx,datalabels);AC(j)=accuracy_1(datalabels,idx1)/100;
end
max_AM=max(AM),loc=find(max_AM==AM);max_NM = NM(loc(1)),max_AC=AC(loc(1)),
fNC = NC(loc(1)), optpara = dampfact(loc(1))

clear
disp('reuters dataset');
data=importdata('reuters.mat');
datalabels=data.datalabels;
data=data.data;
DM=pdist2(data,data,'cosine');
S=-DM;
DM1=DM;
for i=1:size(data,1)
DM1(i,i)=0;
end
PDM1=squareform(DM1);
p=median(-PDM1);
CL = cell(1,4);
dampfact = [0.6,0.7,0.8,0.9];

parfor i=1:4
tic
[CL{i}]=apcluster(S,p,'dampfact',dampfact(i));
toc
end

%[NM,AC]=evaluatecluster(idx,datalabels)
%NM=nmi(idx,datalabels),AC=accuracy_A(datalabels,idx)/100
%NC=numel(unique(idx))
%fname=['..\results\','Fig.S3A','.png'];
%saveas(gcf,fname);
clear i;
for j=1:1:4
    idx = CL{j};
    uni=unique(idx);idx1=zeros(size(idx));
for i=1:1:length(uni)
idx1(find(idx==uni(i)))=i;
end
NC(j)=numel(unique(idx));AM(j)=ami(idx,datalabels);NM(j)=nmi(idx,datalabels);AC(j)=accuracy_1(datalabels,idx1)/100;
end
max_AM=max(AM),loc=find(max_AM==AM);max_NM = NM(loc(1)),max_AC=AC(loc(1)),
fNC = NC(loc(1)), optpara = dampfact(loc(1))
