b=[1]
a=[1 3]
t=[-1:0.05:4]
% first build the unit step function
for i=1:length(t)
    if t(i) >= 0
        u(i) = 1
    else
        u(i) = 0
    end
end
% then build the delta function or impulse function
for i=1:length(t)
    if t(i) == 0
        del(i) = 1
    else
        del(i) = 0
    end
end
s=lsim(b,a,u,t)
h=lsim(b,a,del,t)
%xis=[-2 6 -1 3]
subplot(2,1,1)
%plot(t,u)
plot(t,s)
%axis(xis)
subplot(2,1,2)
%plot(t,del)
plot(t,h)
%axis(xis)
        