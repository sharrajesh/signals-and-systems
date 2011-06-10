% eigenfunctions of discrete time LTI systems
n=-20:100;

%computing inputs
x1=exp(j*(pi/4)*n);
x2=sin(pi*(n/8)+pi/16);
x3=(9/10).^n % make sure that we do element by element operation
x4=n+1

%plotting inputs
hfig1=figure(1)
clf(hfig1)

subplot(4,1,1)
plot(n,real(x1),'-r')
legend('real part')
xlabel('n')
ylabel('x1 real and imag')
hold
subplot(4,1,1)
plot(n,imag(x1),'-b')
legend('real part','imag part')
axis([-25 125 -1.5 1.5])
grid

subplot(4,1,2)
plot(n,x2,'-r')
xlabel('n')
ylabel('x2')
axis([-25 125 -1.5 1.5])
grid

subplot(4,1,3)
plot(n,x3,'-r')
xlabel('n')
ylabel('x3')
axis([-25 125 0 15])
grid

subplot(4,1,4)
plot(n,x4,'-r')
xlabel('n')
ylabel('x4')
axis([-25 125 -220 220])
grid

%filter command coefficients
b=[1 0.9]
a=[1 -0.25]

%computing outputs
y1=filter(b,a,x1)
y2=filter(b,a,x2)
y3=filter(b,a,x3)
y4=filter(b,a,x4)

% plot outputs
hfig2=figure(2)
clf(hfig2)

%set the range r = 21:121
r=21:121

subplot(4,1,1)
plot(n(r),real(y1(r)),'-r')
legend('real part')
xlabel('n')
ylabel('y1 real and imag')
hold
subplot(4,1,1)
plot(n(r),imag(y1(r)),'-b')
legend('real part','imag part')
axis([-25 125 -7 7])
grid

subplot(4,1,2)
plot(n(r),y2(r),'-r')
xlabel('n')
ylabel('y2')
axis([-25 125 -7 7])
grid

subplot(4,1,3)
plot(n(r),y3(r),'-r')
xlabel('n')
ylabel('y3')
axis([-25 125 -2 5])
grid

subplot(4,1,4)
plot(n(r),y4(r),'-r')
xlabel('n')
ylabel('y4')
axis([-25 125 -400 400])
grid

%testing for eigenfunction property
h1=y1./x1
h2=y2./x2
h3=y3./x3
h4=y4./x4

%ploting eigen value
hfig3=figure(3)
clf(hfig3)

subplot(4,1,1)
plot(n(r),real(h1(r)),'-r')
legend('real part')
xlabel('n')
ylabel('h1 real and imag')
hold
subplot(4,1,1)
plot(n(r),imag(h1(r)),'-b')
legend('real part','imag part')
axis([-25 125 -3 3])
grid

subplot(4,1,2)
plot(n(r),h2(r),'-r')
xlabel('n')
ylabel('h2')
axis([-25 125 -7 9])
grid

subplot(4,1,3)
plot(n(r),h3(r),'-r')
xlabel('n')
ylabel('h3')
axis([-25 125 -1 3])
grid

subplot(4,1,4)
plot(n(r),h4(r),'-r')
xlabel('n')
ylabel('h4')
axis([-25 125 -1 4])
grid

