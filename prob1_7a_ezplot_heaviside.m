syms t
u=heaviside(t)
u2=heaviside(t-2)
f=t*u*u2
% t = sym([-5:.2:5])
% f1 = subs(f,t,syms([-5:.2:5])
ezplot(f,[-5:.2:5])
