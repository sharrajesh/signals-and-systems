
N=64;
w=[0:N-1].*2*pi/N;

syms n

xn=(2/5)*(1/2)^n+(6/20)*(1/2)^(n-1);

x= subs(xn,n,r);

X=fft(x);

figure(4)
clf

subplot(211)
plot(w,abs(X));

subplot(212)
plot(x);

return;

X=5*ones(1,N);
x=ifft(x,N);

figure(3)
clf

subplot(211)
plot(w,X);

subplot(212)
plot(w,abs(x));

return;
