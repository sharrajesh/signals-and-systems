%first run prob6_2a

n=[0:19];

%step input for 
x1=[ones(1,20)];

y1=filter(b1,a1,x1);
y2=filter(b2,a2,x1);
y3=filter(b3,a3,x1);

figure(5)
clf

subplot(311)
plot(n,y1);
title('butter')
grid

subplot(312)
plot(n,y2);
title('remez for n2=4')
grid

subplot(313)
plot(n,y3);
title('remez for n2=12')
grid

return

