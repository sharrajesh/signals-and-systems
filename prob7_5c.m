
clc

figure(2)
clf

% [gd,f] = grpdelay(b,a,n,'whole', fs) use n points around the whole unit 
% circle (from 0 to 2?, or from 0 to fs).
grpdelay(h,1);

return
