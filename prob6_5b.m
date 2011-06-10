%run prob6_5a.m and prob6_5b.m
[tau,w]=grpdelay(b,a,N,'whole');

figure(4)
clf

plot(w,tau);
grid
title('group delay tau per freq');

return 
