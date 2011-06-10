% commutative property of conv
% y=s*t = t*s
x1=[ones(1,5) zeros(1,5)]
h1=[1 -1 3 0 1]
x1_h1=conv(x1,h1)
h1_x1=conv(h1,x1)
n_x1_h1=[0:length(x1_h1)-1]
n_h1_x1=[0:length(h1_x1)-1]
subplot(2,1,1)
stem(n_x1_h1,x1_h1)
subplot(2,1,2)
stem(n_h1_x1,h1_x1)
