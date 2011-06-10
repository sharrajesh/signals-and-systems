%first run tut5_6b.m

x=[1 zeros(1,9)];

y1=filter(b,a,x)

%after solving c analytically
syms n

hn=-(1/2)*(1/2)^(n)+(2/3)*(1/3)^n

h=subs(hn,n,[0:9]);

h

return;
