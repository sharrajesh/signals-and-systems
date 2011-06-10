syms t T 
c = cos(2*pi*t/T)
s = sin(2*pi*t/T)
x = c*s
x4=subs(x,T,4)
x8=subs(x,T,8)
x16=subs(x,T,16)
ezplot(x4,[0 32])
hold
ezplot(x8,[0 32])
ezplot(x16,[0 32])