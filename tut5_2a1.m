clear
clc

wr=[0.7217 0.5346 0.5346 0.5346 0.5906 0.5906 0.5906 0.6535 0.6535 0.6535];
wc=[1.0247 0.9273 1.0247 1.1328 0.9273 1.0247 1.1328 0.9273 1.0247 1.1328];

%you have to do this
syms n k

%to get value for digit k, remember it start from 0 hence k+1
%
dk_n=sym('sin(wr(k+1)*n)+sin(wc(k+1)*n)');

%range r
r=[0:999];

for i=0:9
    %temp d for i = n
    tdi_n=subs(dk_n,k,i);
    %replacing n in temp d different values of range r
    tdi_r=subs(tdi_n,n,r);
    %now converting the symbols like sin(wr(1)*5 to values
    dn=eval(tdi_r);
    d(i+1,:)=dn;
end

%to make sound for digit 1 2 3 4 5
for i=0:9
    sound(d(i+1,:),8192);
    pause(1)
end

return

