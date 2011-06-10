clear
clc

syms x xk xt k t T w0

w0=sym('2*pi/T');

xk=(1/T)*xt*exp(-j*k*w0*t);

x_T2=subs(xk,'T',2) ; % replacing T with actual time period 2

x_T2_minus_1_0=subs(x_T2,xt,1+t); % replacing xt with equation of funtion for the range 1

x_T2_0_plus_1=subs(x_T2,xt,1-t); % replacing xt with equation of funtion for the range 2

a_k=int(x_T2_minus_1_0,t,-1,0) + int(x_T2_0_plus_1,t,0,1); %integrating only over the region where it is non zero

r=-10:10 ; % !!!! we will be varying this range to see how the plot changes

%r=-100:100 ; 

for k1=r
    a(k1-r(1)+1)=subs(a_k,'k',k1);
end

%a=roff(a)

a((length(a)+1)/2)=1; %to cover for the case when a(0)=NaN

%stem(r,a)

x=synth1(a,2,r) ; % this function takes the coefficients, time period and the range r

sym xd

xd=diff(x,t)

figure

ezplot(real(xd),[-1 1]) ; % plot the real part of x

grid
