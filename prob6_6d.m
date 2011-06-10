% first run prob6_6a.m to load djia 
clc

%new N
N=520;
week=[1:N];
p=10;

% preallocate X
X=zeros(N-p,p);
for i=1:N-p
    X(i,:)=djia(i:i+p-1)';
end

% preallocate x
x=djia(p+1:N);

% solving for linear predictor coefficients
a=-X\x

% preallocate xhat1
xhat1=zeros(N,1);
xhat1(1:p)=djia(1:p);

for i=p+1:N
    X1=xhat1(i-p:i-1)';
    xhat1(i)=-X1*a;
end

e1=xhat1-djia(1:N);
e1s=e1.*e1;

figure(4)
clf

subplot(211)
plot(week,djia(1:N),'r',week,xhat1,'b');
legend('djia','predicted djia')
xlabel('week')
title('found with order p=10');

subplot(212)
plot(week,e1s);

return
