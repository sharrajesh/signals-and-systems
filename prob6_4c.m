
% run prob6_4ab.m
y1=filter(b1,a1,x);
y2=filter(b2,a2,x);
y3=filter(b3,a3,x);

soundsc(y1);
pause(3);
soundsc(y2);
pause(3);
soundsc(y3);
pause(3);

return
