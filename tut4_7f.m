%symbolic computation of continuous time fourier transform
clear
clc

syms t 

u1=heaviside(t);
u2=heaviside(t+2);
u3=heaviside(t-2);
u4=u2-u3;

syms y1 y2
y1=u4;
y2=subs(y1,t,t-2);

Y1=fourier(y1);
Y2=fourier(y2);

disp('y1=');pretty(y1)
disp('Y1=');pretty(simplify(Y1))

disp('y2=');pretty(y2)
disp('Y2=');pretty(simplify(Y2))

rp1=real(Y1);
ip1=imag(Y1);

mag1 = abs(Y1);
phs1 = atan(ip1/rp1); %note that angle does not work with symbolic objects

rp2=real(Y2);
ip2=imag(Y2);

mag2 = abs(Y2);
phs2 = atan(ip2/rp2); %note that angle does not work with symbolic objects

%since it is just shift in time hence freq resp will have the same
%magnitude
figure(1)
subplot(211)
ezplot(mag1);
subplot(212)
ezplot(mag2);
