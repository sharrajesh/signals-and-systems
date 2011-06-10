% subplot(1,2,1)
% stem(nx,x)
% subplot(1,2,2)
% stem(ny1,y1)

nx=[-3:7]
x=[zeros(1,3) 2 0 2 -1 3 zeros(1,3)]
y1=x
% ny1=nx-2
ny1=-nx

subplot(2,1,1)
stem(nx,x)
axis([-8 8 -5 5])

subplot(2,1,2)
stem(ny1,y1)
axis([-8 8 -5 5])
