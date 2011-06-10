%first run tut5_6d.m

x=[1 zeros(1,31)];

h=filter(b,a,x)

%note that here h is the impulse response of the complete system
syms n

h2n=3*(1/4)^n

h2=subs(h2n,n,[0:31])

%since h=h1 + h2 =>h1=h-h2
h1=h-h2

return;
