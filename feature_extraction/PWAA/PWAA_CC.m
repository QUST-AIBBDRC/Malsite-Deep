clear all
clc
% protein='TFVPAKKVKDLLK';
input=protein;
L = length(input);
h=[];
inp = zeros(1,L);
for ii = 1:L;
    if strcmpi(input(ii),'A')== 1  %Ala
        inp(ii) = 1;
    elseif strcmpi(input(ii),'C')== 1  %Cys
        inp(ii) = 2; 
    elseif strcmpi(input(ii),'D')== 1  %Asp
        inp(ii) = 3;
    elseif strcmpi(input(ii),'E')== 1  %Glu
        inp(ii) = 4;
    elseif strcmpi(input(ii),'F')== 1  %Phe
        inp(ii) = 5;
    elseif strcmpi(input(ii),'G')== 1  %Gly
        inp(ii) = 6;
    elseif strcmpi(input(ii),'H')== 1  %His
        inp(ii) = 7;
    elseif strcmpi(input(ii),'I')== 1  %Ile
        inp(ii) = 8;
    elseif strcmpi(input(ii),'K')== 1  %Lys
        inp(ii) = 9;
    elseif strcmpi(input(ii),'L')== 1  %Leu
        inp(ii) = 10;
    elseif strcmpi(input(ii),'M')== 1  %Met
        inp(ii) = 11;
    elseif strcmpi(input(ii),'N')== 1  %Asn
        inp(ii) = 12;
    elseif strcmpi(input(ii),'P')== 1  %Pro
        inp(ii) = 13;
    elseif strcmpi(input(ii),'Q')== 1  %Gln
        inp(ii) = 14;
    elseif strcmpi(input(ii),'R')== 1  %Arg
        inp(ii) = 15;
    elseif strcmpi(input(ii),'S')== 1  %Ser
        inp(ii) = 16;
    elseif strcmpi(input(ii),'T')== 1  %Thr
        inp(ii) = 17;
    elseif strcmpi(input(ii),'V')== 1  %Val
        inp(ii) = 18;
    elseif strcmpi(input(ii),'W')== 1  %Trp
        inp(ii) = 19;
    elseif strcmpi(input(ii),'Y')== 1  %Tyr
        inp(ii) = 20;
    else
        inp(ii) = 21;  %undefined
    end
end
x=[];
x_=zeros(1,L);
for i=1:20;
    for j=1;L;
       index=find(inp==i);
       x_(index)=1;
    end
    x=[x;x_];
    x_=zeros(1,L);
end
sum=zeros(1,20);
l=(L-1)/2;
for i=1:20
   for j=-l:l;
    sum_=x(i,j+l+1)*(j+abs(j)/l);
    sum(i)=sum(i)+sum_;
   end
   PWAA(i)=sum(i)/l*(l+1);
end
%     
%     
% ll=(l-1)/2;%表示样本上游或者下游长度
% x=zeros(1,l);
% a=1:l;%生成1到样本长度的数字
% b=a-ll-1;%上下游的位置
% d=abs(a-ll-1)/ll;
% sum=0;
% ci=[];
% % k=20;
% % for i=1:k;
% 
%     for ii=1:l;
%         if inp(ii)==1;
%          x(ii)=1;
%         end
%         sum=sum+(x(ii)*(b(ii)+d(ii)));
%         cii=1/(ll*(ll+1))*sum;
%         %ci={ci,cii};
%     end
% %     ci=[ci,cii];
% %     inp=[]; 
% % end
% 
% 
% 
% 
