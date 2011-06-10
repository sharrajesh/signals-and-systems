
clear
clc

b=[1 -1];
a=[1 3 1];

figure(1)
clf
roc=1;
[ps,zs]=pzplot(b,a,roc);

figure(2)
clf
roc=-2;
[ps,zs]=pzplot(b,a,roc);

return
