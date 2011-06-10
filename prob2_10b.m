load lineup.mat
N=1000
a=[1 zeros(1,N-1) 0.5]
b=[1]
n=[1:length(y)]
x=filter(b,a,y)
subplot(2,1,1)
plot(n,y)
subplot(2,1,2)
plot(n,x)
%also do sound(y,8192) to hear with echo
%and do sound(x,8192) to hear without echo