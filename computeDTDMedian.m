%
clear;
load firmList.mat
load firmSpecific.mat;

firmSpecific(:, end+2, :) = 0;
finValue = median(firmSpecific(:, 6, firmList(:, 2) == 10008), 3, 'omitnan');
nonfinValue = median(firmSpecific(:, 6, firmList(:, 2) ~= 10008), 3, 'omitnan');
for i = 1:size(firmSpecific, 3)
    if firmList(i, 2) == 10008
        firmSpecific(:, end-1, i) = finValue;
        firmSpecific(:, end, i) = NaN;
    else
        firmSpecific(:, end-1, i) = NaN;
        firmSpecific(:, end, i) = nonfinValue;
    end
end