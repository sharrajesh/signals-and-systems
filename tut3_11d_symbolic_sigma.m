
syms k t T

syms a4k x4t
a4k=1/(k^2+1)
x4t=a4k*exp(i*k*(2*pi/T)*t)
x4t_5=subs(x4t,T,5);
x4t_5_1=symsum(x4t_5,k,-1,1);
x4t_5_3=symsum(x4t_5,k,-3,3);
x4t_5_9=symsum(x4t_5,k,-9,9);

figure
subplot(3,2,1)
ezplot(real(x4t_5_1),[1 10])
subplot(3,2,2)
ezplot(imag(x4t_5_1),[1 10])
subplot(3,2,3)
ezplot(real(x4t_5_3),[1 10])
subplot(3,2,4)
ezplot(imag(x4t_5_3),[1 10])
subplot(3,2,5)
ezplot(real(x4t_5_9),[1 10])
subplot(3,2,6)
%ezplot(imag(x4t_5_9),[1 10]) %its very small comonent


syms a5k x5t
a5k=sym('sign(k)')*i/((-2)^abs(k))
x5t=a5k*exp(i*k*(2*pi/T)*t)
x5t_20=subs(x5t,T,20);
x5t_20_1=symsum(x5t_20,k,-1,1);
x5t_20_3=symsum(x5t_20,k,-3,3);
x5t_20_9=symsum(x5t_20,k,-9,9);

figure
subplot(3,2,1)
ezplot(real(x5t_20_1),[1 10])
subplot(3,2,2)
ezplot(imag(x5t_20_1),[1 10])
subplot(3,2,3)
ezplot(real(x5t_20_3),[1 10])
subplot(3,2,4)
ezplot(imag(x5t_20_3),[1 10])
subplot(3,2,5)
ezplot(real(x5t_20_9),[1 10])
subplot(3,2,6)
ezplot(imag(x5t_20_9),[1 10])

syms a6k x6t
a6k=1/(2^abs(k+2))
x6t=a6k*exp(i*k*(2*pi/T)*t)
x6t_5=subs(x6t,T,5);
x6t_5_1=symsum(x6t_5,k,-1,1);
x6t_5_3=symsum(x6t_5,k,-3,3);
x6t_5_9=symsum(x6t_5,k,-9,9);

figure
subplot(3,2,1)
ezplot(real(x6t_5_1),[1 10])
subplot(3,2,2)
ezplot(imag(x6t_5_1),[1 10])
subplot(3,2,3)
ezplot(real(x6t_5_3),[1 10])
subplot(3,2,4)
ezplot(imag(x6t_5_3),[1 10])
subplot(3,2,5)
ezplot(real(x6t_5_9),[1 10])
subplot(3,2,6)
ezplot(imag(x6t_5_9),[1 10])
