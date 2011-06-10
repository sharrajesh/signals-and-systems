%building unit step function
t=[0:0.5:10]
for i=1:length(t)
    if t(i) < 2
        x(i) = 0
    else
        x(i) = 1
    end
end
plot(t,x)
b=[1] % x coeff
a=[1 2] % y coeff
s=lsim(b,a,x,t)
plot(t,s,'b--')