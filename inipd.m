function [new_ini] = inipd(ini)
%INIPD Summary of this function goes here
%   Detailed explanation goes here
if ~all(~isnan(ini))
    nanloc = find(isnan(ini)==1);
    numnan = numel(nanloc);
    for i=1:1:numnan
        gd = setdiff((1:length(ini)),nanloc(i));
        ini(nanloc(i)) = gd(1);
    end
end
    
    
if ismember(0,ini-(1:length(ini)))    
    eptloc = find((ini-(1:length(ini)))==0);
    numept = numel(eptloc);
    for j=1:1:numept
        gd = setdiff((1:length(ini)),eptloc(j));
        ini(eptloc(j)) = gd(1);
    end
end

if ismember(1,(ini>length(ini)))
    extloc = find((ini>length(ini))==1);
    numext = numel(extloc);
    for ii=1:1:numext
        gd = setdiff((1:length(ini)),extloc(ii));
        ini(extloc(ii)) = gd(1);
    end
end

 new_ini = ini;   
    
end

