%first run prob6_2a and prob6_2c

y2=filt2d(b2,a2,n2/2,xn);
y3=filt2d(b3,a3,n3/2,xn);

figure(8)
clf
colormap(gray);

subplot(311)
image(xn*64);

subplot(312)
image(y2*64);

subplot(313)
image(y3*64);

return
