%symbolic computation of continuous time fourier transform
clear
clc

x1=sym('1/2*exp(-2*t)*Heaviside(t)');
x2=sym('exp(-4*t)*Heaviside(t)');

t=[0:0.01:10];

figure(1)
clf

subplot(211)
ezplot(x1,t);

subplot(212)
ezplot(x2,t);
%clearly x2 decays faster than x1


%to find FT
syms w X1 X2

X1=1/(4+2*j*w)
X2=1/(4+j*w)

figure(2)
clf

subplot(211)
ezplot(abs(X1));

subplot(212)
ezplot(abs(X2));
%frequency responces does not seem to matter as much
