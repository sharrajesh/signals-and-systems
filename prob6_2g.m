%first run prob6_2a and prob6_2c

y1=filt2d(b1,a1,n1/2,x);
y2=filt2d(b2,a2,n2/2,x);
y3=filt2d(b3,a3,n3/2,x);

figure(7)
clf
colormap(gray);

subplot(311)
image(y1*64);

subplot(312)
image(y2*64);

subplot(313)
image(y3*64);

return
