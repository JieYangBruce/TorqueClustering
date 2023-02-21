# TorqueClustering

This project is for the reproduction of the results of the Torque Clustering (TC) algorithm based on Matlab2019b.

You need to put all the ".mat" files into one folder.

Due to the space limits of Github, we put all the data sets on the google drive: https://drive.google.com/file/d/1ddvBAfxtR9wKKM7IAhNfD9HQ_kyhmceD/view?usp=sharing, the txt version of the data sets is also available: https://drive.google.com/file/d/1cPz7KvnLCPx-j6nWOl-juOMTtIWlmW3Y/view?usp=sharing.

The explanation of each "Run" file:

TC_Run() and TC_on_ImageClustering(): The codes for the reproduction of the results in the main article.

TC_Run_Supplementary(): The codes for the reproduction of the results in the supplementary information.

If you want to use the fast version (TorqueClustering_kdtree) of TC for large datasets (for which computing pairwise distance matrix won't fit in your memory), you need to install flann library (https://github.com/flann-lib/flann) based on your environment.
