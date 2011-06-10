% proper use of step and impluse functions
t=[0:0.5:10]
b=[1]
a=[1 0.5]
s=step(b,a,t) % step function
% to plot yellow or red
% plot(t,s,'y--')
subplot(2,1,1)
plot(t,s,'r--')
h=impulse(b,a,t)
subplot(2,1,2)
plot(t,h,'b--')