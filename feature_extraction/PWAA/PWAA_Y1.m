clear all
clc
input1=importdata('Training_data.txt');
[m,n]=size(input1);
data=input1(2:2:m,:);
sequence=data;
% % [m,n]=size(AA);
vector=[];
% inputout=sequence;
for i=1:m/2;
   vector= [vector;PWAA_demo(data{i})];
end
 save PWAA_Training_data.mat vector
