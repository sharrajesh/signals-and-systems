clf

x = [1 2 3 4 5 6 7 8];
nx = -2:5;

v = [-1 5 3 -2 1 -4 6 9 4 5];
nv = -4:5;

y=conv(x,v);

% we can use any of the following methods
ny = nx(1)+nv(1):nx(1)+nv(1)+length(x)+length(v)-2;
ny1 = nx(1)+nv(1):nx(length(nx))+nv(length(nv));

% draw this first to get the biggest axis
subplot(313)
ylabel('v[n]')
stem(ny1,y)
a=axis
grid
ylabel('y[n]')
xlabel('n')

subplot(311)
stem(nx,x)
ylabel('x[n]')
xlabel('n')
axis(a)
grid
title('Convolution:  y[n] = x[n] * y[n]')

subplot(312)
stem(nv,v)
axis(a)
ylabel('v[n]')
xlabel('n')
grid

