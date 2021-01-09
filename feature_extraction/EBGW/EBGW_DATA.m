clear all
clc
input=importdata('Training_data.txt');
data=input(2:2:end,:);
[m,n]=size(data);
vector=[];
for i=1:m;
 vector= [vector;EBGW(data{i})];
end
save EBGW_Training_data_14.mat vector

