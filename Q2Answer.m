% (a)
clear;
load pfInfo.mat;

% (b)
column1 = pfInfo.firmList(:, 1);
csvwrite('companylist.csv', column1);

% (c)
column7 = pfInfo.firmList(:, 7);
firmList_Financial = pfInfo.firmList(column7 == 10008, :);
csvwrite('Companylist_Financial.csv', firmList_Financial);
firmList_Basic_Material = pfInfo.firmList(column7 == 10002, :);
csvwrite('Companylist_Basic_Material.csv', firmList_Basic_Material);
firmList_Communications = pfInfo.firmList(column7 == 10003, :);
csvwrite('Companylist_Communications.csv', firmList_Communications);
firmList_Consumer_cyclical = pfInfo.firmList(column7 == 10004, :);
csvwrite('Companylist_Consumer_cyclical.csv', firmList_Consumer_cyclical);
firmList_noncyclical = pfInfo.firmList(column7 == 10005, :);
csvwrite('Companylist_noncyclical.csv', firmList_noncyclical);
firmList_Diversified = pfInfo.firmList(column7 == 10006, :);
csvwrite('Companylist_Diversified.csv', firmList_Diversified);
firmList_Energy = pfInfo.firmList(column7 == 10007, :);
csvwrite('Companylist_Energy.csv', firmList_Energy);
firmList_Industrial = pfInfo.firmList(column7 == 10011, :);
csvwrite('Companylist_Industrial.csv', firmList_Industrial);
firmList_Technology = pfInfo.firmList(column7 == 10013, :);
csvwrite('Companylist_Technology.csv', firmList_Technology);
firmList_Utilities = pfInfo.firmList(column7 == 10014, :);
csvwrite('Companylist_Utilities.csv', firmList_Utilities);