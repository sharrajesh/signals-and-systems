t=linspace(0,20,1000)
x=cos(t)
x2=sign(x)

b=[1]
a=[1 1]

y2=lsim(b,a,x2,t)

%for ploting between 10<=t<=20 implines t(500:1000)
r=501:1000
tr=t(r)
x2r=x2(r)
y2r=y2(r)

clf
plot(r,x2r,'r')
hold
plot(r,y2r,'b')
xlabel('10<=t<=20')
ylabel('x2r/y2r')
legend('x2r','y2r')
