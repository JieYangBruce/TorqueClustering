function [NMI,ACC] = evaluatecluster(Idx,datalabels)
%EVALUATECLUSTER �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
NMI=nmi(Idx,datalabels);
ACC=accuracy(datalabels,Idx)/100;
end

