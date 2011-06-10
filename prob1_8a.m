syms t a
x1=cos(2*pi*t/5)
p1=abs(x1)
ea=int(p1,t,-a,a)
%limit(ea,a,pi/2)