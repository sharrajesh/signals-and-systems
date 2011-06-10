clear
clc

for n=0:50
    x(n+1)=(3/4)^n;
end

figure(3)
clf
stem(x);

return