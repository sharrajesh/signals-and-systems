
prob8_4a

% max number of bits we want to send
N=100;
fb=1/T;

% number of samples per bit (see prev samples from more desc)
nsbp=1/(fb*dt);

% random seq of 0 and 1 bits
yb01r=rand(1,N) > 0.5;

y=zeros(1,N*nsbp);
y(1:nsbp:N*nsbp)=yb01r;
y=conv(y,p);

t=[0:dt:(length(y)-1)*dt];

figure(3)
clf

subplot(211)
stem(t,y);

subplot(212)
eyediagram(y,fb,dt)

return
