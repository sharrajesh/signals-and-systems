% proper use of length in lsim
t=[0:10]
% building unit step function
x=ones(1,length(t))
% for equation 2.13
b=[1]
a=[1 0.5]
s=lsim(b,a,x,t)
% to plot yellow or red
% plot(t,s,'y--')
subplot(1,2,1)
plot(t,s,'r--')
t1=[0:0.1:10]
x1=ones(1, length(t1))
s1=lsim(b,a,x1,t1)
subplot(1,2,2)
plot(t1,s1,'b--')