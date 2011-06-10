N=1000
b=[1 zeros(1,N-1) 0.5]
a=[1]
% better way to build an impulse
d=[1 zeros(1,4000)]
h=filter(b,a,d)
plot(h)
