# RCC on synthetic data sets
import pyrcc
import numpy as np
# import time
from sklearn.metrics import normalized_mutual_info_score
from sklearn.metrics.cluster import adjusted_mutual_info_score


X = []
Y = []
P = []
data = []
data = np.genfromtxt('ALLdatasets/data1.txt', delimiter=',')
X = data[:,:-1]
Y = data[:,-1]

clusterer = pyrcc.RccCluster(k=3)
P = clusterer.fit(X)
print('AMI: {}'.format(adjusted_mutual_info_score(Y, P, average_method='max')))#setting for author's version
print('NMI: {}'.format(normalized_mutual_info_score(Y, P, average_method='geometric')))


X = []
Y = []
P = []
data = []
data = np.genfromtxt('ALLdatasets/data2.txt', delimiter=',')
X = data[:,:-1]
Y = data[:,-1]

clusterer = pyrcc.RccCluster(k=40)
P = clusterer.fit(X)
print('AMI: {}'.format(adjusted_mutual_info_score(Y, P, average_method='max')))#setting for author's version
print('NMI: {}'.format(normalized_mutual_info_score(Y, P, average_method='geometric')))

X = []
Y = []
P = []
data = []
data = np.genfromtxt('ALLdatasets/data3.txt', delimiter=',')
X = data[:,:-1]
Y = data[:,-1]

clusterer = pyrcc.RccCluster(k=10)
P = clusterer.fit(X)
print('AMI: {}'.format(adjusted_mutual_info_score(Y, P, average_method='max')))#setting for author's version
print('NMI: {}'.format(normalized_mutual_info_score(Y, P, average_method='geometric')))

X = []
Y = []
P = []
data = []
data = np.genfromtxt('ALLdatasets/data4.txt', delimiter=',')
X = data[:,:-1]
Y = data[:,-1]

clusterer = pyrcc.RccCluster(k=40)
P = clusterer.fit(X)
print('AMI: {}'.format(adjusted_mutual_info_score(Y, P, average_method='max')))#setting for author's version
print('NMI: {}'.format(normalized_mutual_info_score(Y, P, average_method='geometric')))

X = []
Y = []
P = []
data = []
data = np.genfromtxt('ALLdatasets/data6.txt', delimiter=',')
X = data[:,:-1]
Y = data[:,-1]

clusterer = pyrcc.RccCluster(k=40)
P = clusterer.fit(X)
print('AMI: {}'.format(adjusted_mutual_info_score(Y, P, average_method='max')))#setting for author's version
print('NMI: {}'.format(normalized_mutual_info_score(Y, P, average_method='geometric')))

X = []
Y = []
P = []
data = []
data = np.genfromtxt('ALLdatasets/data7.txt', delimiter=',')
X = data[:,:-1]
Y = data[:,-1]

clusterer = pyrcc.RccCluster(k=5)
P = clusterer.fit(X)
print('AMI: {}'.format(adjusted_mutual_info_score(Y, P, average_method='max')))#setting for author's version
print('NMI: {}'.format(normalized_mutual_info_score(Y, P, average_method='geometric')))

X = []
Y = []
P = []
data = []
data = np.genfromtxt('ALLdatasets/data8.txt', delimiter=',')
X = data[:,:-1]
Y = data[:,-1]

clusterer = pyrcc.RccCluster(k=20)
P = clusterer.fit(X)
print('AMI: {}'.format(adjusted_mutual_info_score(Y, P, average_method='max')))#setting for author's version
print('NMI: {}'.format(normalized_mutual_info_score(Y, P, average_method='geometric')))

X = []
Y = []
P = []
data = []
data = np.genfromtxt('ALLdatasets/data9.txt', delimiter=',')
X = data[:,:-1]
Y = data[:,-1]

clusterer = pyrcc.RccCluster(k=40)
P = clusterer.fit(X)
print('AMI: {}'.format(adjusted_mutual_info_score(Y, P, average_method='max')))#setting for author's version
print('NMI: {}'.format(normalized_mutual_info_score(Y, P, average_method='geometric')))


# RCC on real-world data sets

X = []
Y = []
P = []
data = []
data = np.genfromtxt('ALLdatasets/YTF_withlabel.txt', delimiter=',')
X = data[:,:-1]
Y = data[:,-1]

clusterer = pyrcc.RccCluster(k=40, measure='cosine')
P = clusterer.fit(X)
print('AMI: {}'.format(adjusted_mutual_info_score(Y, P, average_method='max')))#setting for author's version
print('NMI: {}'.format(normalized_mutual_info_score(Y, P, average_method='geometric')))

X = []
Y = []
P = []
data = []
data = np.genfromtxt('ALLdatasets/MNIST_UMAP_withlabel.txt', delimiter=',')
X = data[:,:-1]
Y = data[:,-1]

clusterer = pyrcc.RccCluster(k=40)
P = clusterer.fit(X)
print('AMI: {}'.format(adjusted_mutual_info_score(Y, P, average_method='max')))#setting for author's version
print('NMI: {}'.format(normalized_mutual_info_score(Y, P, average_method='geometric')))

X = []
Y = []
P = []
data = []
data = np.genfromtxt('ALLdatasets/coil100_withlabel.txt', delimiter=',')
X = data[:,:-1]
Y = data[:,-1]

clusterer = pyrcc.RccCluster(k=10, measure='cosine')
P = clusterer.fit(X)
print('AMI: {}'.format(adjusted_mutual_info_score(Y, P, average_method='max')))#setting for author's version
print('NMI: {}'.format(normalized_mutual_info_score(Y, P, average_method='geometric')))

X = []
Y = []
P = []
data = []
data = np.genfromtxt('ALLdatasets/shuttle_withlabel.txt', delimiter=',')
X = data[:,:-1]
Y = data[:,-1]

clusterer = pyrcc.RccCluster(k=10, measure='cosine')
P = clusterer.fit(X)
print('AMI: {}'.format(adjusted_mutual_info_score(Y, P, average_method='max')))#setting for author's version
print('NMI: {}'.format(normalized_mutual_info_score(Y, P, average_method='geometric')))

X = []
Y = []
P = []
data = []
data = np.genfromtxt('ALLdatasets/RNA_withlabel.txt', delimiter=',')
X = data[:,:-1]
Y = data[:,-1]

clusterer = pyrcc.RccCluster(k=3, measure='cosine')
P = clusterer.fit(X)
print('AMI: {}'.format(adjusted_mutual_info_score(Y, P, average_method='max')))#setting for author's version
print('NMI: {}'.format(normalized_mutual_info_score(Y, P, average_method='geometric')))

X = []
Y = []
P = []
data = []
data = np.genfromtxt('ALLdatasets/haberman_withlabel.txt', delimiter=',')
X = data[:,:-1]
Y = data[:,-1]

clusterer = pyrcc.RccCluster(k=5, measure='cosine')
P = clusterer.fit(X)
print('AMI: {}'.format(adjusted_mutual_info_score(Y, P, average_method='max')))#setting for author's version
print('NMI: {}'.format(normalized_mutual_info_score(Y, P, average_method='geometric')))

X = []
Y = []
P = []
data = []
data = np.genfromtxt('ALLdatasets/zoo_withlabel.txt', delimiter=',')
X = data[:,:-1]
Y = data[:,-1]

clusterer = pyrcc.RccCluster(k=40, measure='cosine')
P = clusterer.fit(X)
print('AMI: {}'.format(adjusted_mutual_info_score(Y, P, average_method='max')))#setting for author's version
print('NMI: {}'.format(normalized_mutual_info_score(Y, P, average_method='geometric')))

X = []
Y = []
P = []
data = []
data = np.genfromtxt('ALLdatasets/atom_withlabel.txt', delimiter=',')
X = data[:,:-1]
Y = data[:,-1]

clusterer = pyrcc.RccCluster(k=30)
P = clusterer.fit(X)
print('AMI: {}'.format(adjusted_mutual_info_score(Y, P, average_method='max')))#setting for author's version
print('NMI: {}'.format(normalized_mutual_info_score(Y, P, average_method='geometric')))

X = []
Y = []
P = []
data = []
data = np.genfromtxt('ALLdatasets/soybean_withlabel.txt', delimiter=',')
X = data[:,:-1]
Y = data[:,-1]

clusterer = pyrcc.RccCluster(k=10, measure='cosine')
P = clusterer.fit(X)
print('AMI: {}'.format(adjusted_mutual_info_score(Y, P, average_method='max')))#setting for author's version
print('NMI: {}'.format(normalized_mutual_info_score(Y, P, average_method='geometric')))

X = []
Y = []
P = []
data = []
data = np.genfromtxt('ALLdatasets/celltrack_withlabel.txt', delimiter=',')
X = data[:,:-1]
Y = data[:,-1]

clusterer = pyrcc.RccCluster(k=20, measure='cosine')
P = clusterer.fit(X)
print('AMI: {}'.format(adjusted_mutual_info_score(Y, P, average_method='max')))#setting for author's version
print('NMI: {}'.format(normalized_mutual_info_score(Y, P, average_method='geometric')))

X = []
Y = []
P = []
data = []
data = np.genfromtxt('ALLdatasets/cmupie_withlabel.txt', delimiter=',')
X = data[:,:-1]
Y = data[:,-1]

clusterer = pyrcc.RccCluster(k=3, measure='cosine')
P = clusterer.fit(X)
print('AMI: {}'.format(adjusted_mutual_info_score(Y, P, average_method='max')))#setting for author's version
print('NMI: {}'.format(normalized_mutual_info_score(Y, P, average_method='geometric')))

X = []
Y = []
P = []
data = []
data = np.genfromtxt('ALLdatasets/reuters_withlabel.txt', delimiter=',')
X = data[:,:-1]
Y = data[:,-1]

clusterer = pyrcc.RccCluster(k=30, measure='cosine')
P = clusterer.fit(X)
print('AMI: {}'.format(adjusted_mutual_info_score(Y, P, average_method='max')))#setting for author's version
print('NMI: {}'.format(normalized_mutual_info_score(Y, P, average_method='geometric')))


X = []
Y = []
P = []
data = []
data = np.genfromtxt('ALLdatasets/cmupie11k_withlabel.txt', delimiter=',')
X = data[:,:-1]
Y = data[:,-1]

clusterer = pyrcc.RccCluster(k=5, measure='cosine')
P = clusterer.fit(X)
print('AMI: {}'.format(adjusted_mutual_info_score(Y, P, average_method='max')))#setting for author's version
print('NMI: {}'.format(normalized_mutual_info_score(Y, P, average_method='geometric')))