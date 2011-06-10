% this module will build x and X
clc

%new N
N=520;
week=[1:N];
p=3;

% preallocate X
X=zeros(N-p,p);
for i=1:N-p
    X(i,:)=djia(i:i+p-1)';
end

% preallocate x
x=djia(p+1:N);

% solving for linear predictor coefficients
a=-X\x
return
