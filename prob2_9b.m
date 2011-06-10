b=[1]
a=[1 3]
t=[0:0.05:4]
s=step(b,a,t)
h=impulse(b,a,t)

figure

subplot(2,1,1)
plot(t,s)
subplot(2,1,2)
plot(t,h)
        