t=linspace(0,20,1000)
x=cos(t)

b=[1]
a=[1 1]

y=lsim(b,a,x,t)

%for ploting between 10<=t<=20 implines t(500:1000)
r=501:1000
tr=t(r)
xr=x(r)
yr=y(r)

clf
plot(r,xr,'r')
hold
plot(r,yr,'b')
xlabel('10<=t<=20')
ylabel('xr/yr')
legend('xr','yr')
