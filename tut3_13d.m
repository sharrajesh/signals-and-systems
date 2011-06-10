clear
clc

% if you want to derive it manually first see signal and system book page
% 118
% then DE_complete.pdf basic concepts page 112 and then undetermine
% coeffiecient page 147

syms vr t

vr=dsolve('0.1*Dvr+vr=cos(pi*t)','vr(0)=0','t')

vrsim=simplify(vr)

pretty(vrsim)

t=[0:0.01:10]

%let input be impulse
%x=[1 zeros(1,length(t)-1)]
x=[ones(1,length(t))]

a=[0.1 1]

b=[1]

y=lsim(b,a,x,t)

plot(t,y)