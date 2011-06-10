clear
clc

syms x xk xt k t T w0

w0=sym('2*pi/T');

xk=(1/T)*xt*exp(-j*k*w0*t);

x_T2=subs(xk,'T',2) ; % replacing T with actual time period 2

x_T2_s=subs(x_T2,xt,1) ; % replacing xt with equation of funtion

a_k=int(x_T2_s,t,-1/2,1/2) ; %integrating only over the region where it is non zero

r=-10:10 ; % !!!! we will be varying this range to see how the plot changes
%r=-100:100 ; 

for k1=r
    a(k1-r(1)+1)=subs(a_k,'k',k1);
end

%a=roff(a)

a((length(a)+1)/2)=1; %to cover for the case when a(0)=NaN

%stem(r,a)

x=synth1(a,2,r) ; % this function takes the coefficients, time period and the range r

real(subs(x(1),t,-1/2))

figure
ezplot(real(x),[-1 1]) ; % plot the real part of x
%ezplot(imag(x)) ; % plot the imagpart of x
grid
