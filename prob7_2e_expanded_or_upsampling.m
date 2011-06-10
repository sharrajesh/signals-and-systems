% expansion
clc

N=4*(length(x2s)-1)+1;
xe2=zeros(1,N);
xe2(1:4:N)=x2s;

te=[-4:Ti:4];

figure(3)
clf

stem(te,xe2);

return

