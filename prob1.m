%prob1.m
n=[0:16];
x1=cos(pi*n/4);
y1=mean(x1);
stem(n,x1);
title('x1=cos(pi*n/4)')
xlabel('n samples')
ylabel('x1[n]')
