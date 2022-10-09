%Program for calculating the Adjusted Mutual Information (AMI) between
%two clusterings, tested on Matlab 7.0 (R14)
%(C) Nguyen Xuan Vinh 2008-2010
%Contact: n.x.vinh@unsw.edu.au 
%         vthesniper@yahoo.com
%--------------------------------------------------------------------------
%**Input: a contingency table T
%   OR
%        cluster label of the two clusterings in two vectors
%        eg: true_mem=[1 2 4 1 3 5]
%                 mem=[2 1 3 1 4 5]
%        Cluster labels are coded using positive integer. 
%**Output: AMI: adjusted mutual information  (AMI_max)
%
%**Note: In a prevous published version, if you observed strange AMI results, eg. AMI>>1, 
%then it's likely that in these cases the expected MI was incorrectly calculated (the EMI is the sum
%of many tiny elements, each falling out the precision range of the computer).
%However, you'll likely see that in those cases, the upper bound for the EMI will be very
%tiny, and hence the AMI -> NMI (see [3]). It is recommended setting AMI=NMI in
%these cases, which is implemented in this version.
%--------------------------------------------------------------------------
%References: 
% [1] 'A Novel Approach for Automatic Number of Clusters Detection based on Consensus Clustering', 
%       N.X. Vinh, and Epps, J., in Procs. IEEE Int. Conf. on 
%       Bioinformatics and Bioengineering (Taipei, Taiwan), 2009.
% [2] 'Information Theoretic Measures for Clusterings Comparison: Is a
%	    Correction for Chance Necessary?', N.X. Vinh, Epps, J. and Bailey, J.,
%	    in Procs. the 26th International Conference on Machine Learning (ICML'09)
% [3] 'Information Theoretic Measures for Clusterings Comparison: Variants, Properties, 
%       Normalization and Correction for Chance', N.X. Vinh, Epps, J. and
%       Bailey, J., Journal of Machine Learning Research, 11(Oct), pages
%       2837-2854, 2010

function [AMI_]=AMI(true_mem,mem)
if nargin==1
    T=true_mem; %contingency table pre-supplied
elseif nargin==2
    %build the contingency table from membership arrays
    R=max(true_mem);
    C=max(mem);
    n=length(mem);N=n;

    %identify & removing the missing labels
    list_t=ismember(1:R,true_mem);
    list_m=ismember(1:C,mem);
    T=Contingency(true_mem,mem);
    T=T(list_t,list_m);
end

%-----------------------calculate Rand index and others----------
n=sum(sum(T));N=n;
C=T;
nis=sum(sum(C,2).^2);		%sum of squares of sums of rows
njs=sum(sum(C,1).^2);		%sum of squares of sums of columns

t1=nchoosek(n,2);		%total number of pairs of entities
t2=sum(sum(C.^2));      %sum over rows & columnns of nij^2
t3=.5*(nis+njs);

%Expected index (for adjustment)
nc=(n*(n^2+1)-(n+1)*nis-(n+1)*njs+2*(nis*njs)/n)/(2*(n-1));

A=t1+t2-t3;		%no. agreements
D=  -t2+t3;		%no. disagreements

if t1==nc
   AR=0;			%avoid division by zero; if k=1, define Rand = 0
else
   AR=(A-nc)/(t1-nc);		%adjusted Rand - Hubert & Arabie 1985
end

RI=A/t1;			%Rand 1971		%Probability of agreement
MIRKIN=D/t1;	    %Mirkin 1970	%p(disagreement)
HI=(A-D)/t1;      	%Hubert 1977	%p(agree)-p(disagree)
Dri=1-RI;           %distance version of the RI
Dari=1-AR;          %distance version of the ARI
%-----------------------%calculate Rand index and others%----------

%update the true dimensions
[R C]=size(T);
if C>1 a=sum(T');else a=T';end;
if R>1 b=sum(T);else b=T;end;

%calculating the Entropies
Ha=-(a/n)*log(a/n)'; 
Hb=-(b/n)*log(b/n)';

%calculate the MI (unadjusted)
MI=0;
for i=1:R
    for j=1:C
        if T(i,j)>0 MI=MI+T(i,j)*log(T(i,j)*n/(a(i)*b(j)));end;
    end
end
MI=MI/n;

%-------------correcting for agreement by chance---------------------------
AB=a'*b;
bound=zeros(R,C);
sumPnij=0;

E3=(AB/n^2).*log(AB/n^2);

EPLNP=zeros(R,C);
LogNij=log([1:min(max(a),max(b))]/N);
for i=1:R
    for j=1:C
        sumPnij=0;
        nij=max(1,a(i)+b(j)-N);
        X=sort([nij N-a(i)-b(j)+nij]);
        if N-b(j)>X(2)
            nom=[[a(i)-nij+1:a(i)] [b(j)-nij+1:b(j)] [X(2)+1:N-b(j)]];
            dem=[[N-a(i)+1:N] [1:X(1)]];
        else
            nom=[[a(i)-nij+1:a(i)] [b(j)-nij+1:b(j)]];       
            dem=[[N-a(i)+1:N] [N-b(j)+1:X(2)] [1:X(1)]];
        end
        p0=prod(nom./dem)/N;
        
        sumPnij=p0;
        
        EPLNP(i,j)=nij*LogNij(nij)*p0;
        p1=p0*(a(i)-nij)*(b(j)-nij)/(nij+1)/(N-a(i)-b(j)+nij+1);  
        
        for nij=max(1,a(i)+b(j)-N)+1:1:min(a(i), b(j))
            sumPnij=sumPnij+p1;
            EPLNP(i,j)=EPLNP(i,j)+nij*LogNij(nij)*p1;
            p1=p1*(a(i)-nij)*(b(j)-nij)/(nij+1)/(N-a(i)-b(j)+nij+1);            
            
        end
         CC=N*(a(i)-1)*(b(j)-1)/a(i)/b(j)/(N-1)+N/a(i)/b(j);
         bound(i,j)=a(i)*b(j)/N^2*log(CC);         
    end
end

EMI_bound=sum(sum(bound));
EMI_bound_2=log(R*C/N+(N-R)*(N-C)/(N*(N-1)));
EMI=sum(sum(EPLNP-E3));

AMI_=(MI-EMI)/(max(Ha,Hb)-EMI);
NMI=MI/sqrt(Ha*Hb);


%If expected mutual information negligible, use NMI.
if abs(EMI)>EMI_bound
    fprintf('The EMI is small: EMI < %f, setting AMI=NMI',EMI_bound);
    AMI_=NMI;
end;

%---------------------auxiliary functions---------------------
function Cont=Contingency(Mem1,Mem2)

if nargin < 2 || min(size(Mem1)) > 1 || min(size(Mem2)) > 1
   error('Contingency: Requires two vector arguments')
   return
end

Cont=zeros(max(Mem1),max(Mem2));

for i = 1:length(Mem1);
   Cont(Mem1(i),Mem2(i))=Cont(Mem1(i),Mem2(i))+1;
end

            