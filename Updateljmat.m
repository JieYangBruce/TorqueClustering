function [new_ljmat,cutlinkpower] = Updateljmat(old_ljmat,neiborloc,community,commu_DM,G,ALL_DM)
%NNC_UPDATELJMAT Summary of this function goes here
%   Detailed explanation goes here
% On the basis of GC_updateljmat_2, consider the cluster whose mass is one.
% 更新：在原有基础上，剔除掉neiborloc有多个的可能性，只判断有，或者，无。
%版本6上用函数去计算两个社区最近的两个点
pd=numel(community{1});
if pd>1
community_num=numel(community);

    %cutlinknum=0;
%for i=1:1:community_num
    %cutlinknum=cutlinknum+numel(neiborloc{i});
%end
cutlinknum = sum(~cellfun('isempty', neiborloc));
cutlinkpower=zeros(cutlinknum,7);
th=1;
    for i=1:1:community_num
        if ~isempty(neiborloc{i})
            [linkloc1,linkloc2]=mindisttwinsloc(community{i},community{neiborloc{i}},ALL_DM);
            xx=min(community{i});
            yy=min(community{neiborloc{i}});
            %linkloc1=xx(1);
           % linkloc2=yy(1);
             %linkloc1 = community{i}(1);
            %linkloc2 = community{neiborloc{i}}(1);
            %linkloc1=linklocCell{i,neiborloc{i}}(1);
            %linkloc2=linklocCell{i,neiborloc{i}}(2);
            old_ljmat(linkloc1,linkloc2)=1;
            old_ljmat(linkloc2,linkloc1)=1;
            %[th] = row0loc(cutlinkpower);
            cutlinkpower(th,1)=xx;
            cutlinkpower(th,2)=yy;
            cutlinkpower(th,3)=linkloc1;
            cutlinkpower(th,4)=linkloc2;
            cutlinkpower(th,5)=length(community{i});
            cutlinkpower(th,6)=length(community{neiborloc{i}});
            cutlinkpower(th,7)=commu_DM(i,neiborloc{i});
            th=th+1;
        end
    end
end

if pd==1
    community_num=numel(community);
cutlinkpower=zeros(community_num,7);
th=1;
    for i=1:1:community_num
            %[linkloc1,linkloc2]=maxdisttwinsloc(community{i},community{neiborloc{i}},ALL_DM);
             linkloc1 = community{i}(1);
            linkloc2 = community{neiborloc{i}}(1);
            %linkloc1=linklocCell{i,neiborloc{i}}(1);
            %linkloc2=linklocCell{i,neiborloc{i}}(2);
            %old_ljmat(linkloc1,linkloc2)=1;
            %old_ljmat(linkloc2,linkloc1)=1;
            %[th] = row0loc(cutlinkpower);
            cutlinkpower(th,1)=linkloc1;
            cutlinkpower(th,2)=linkloc2;
            cutlinkpower(th,3)=linkloc1;
            cutlinkpower(th,4)=linkloc2;
            cutlinkpower(th,5)=1;
            cutlinkpower(th,6)=1;
            cutlinkpower(th,7)=commu_DM(i,neiborloc{i});
            th=th+1;
    end
        old_ljmat=G;
end

new_ljmat=old_ljmat;

    
    
end

