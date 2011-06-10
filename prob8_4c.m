
prob8_4a

% max number of bits we want to send
N=20;

% let yb stands for the arrays of bits we want to send
yb1=ones(1,N);
yb01=zeros(1,N);
yb01(1:2:N)=1; % alternate ones and zeros

% let us pick rate at which we want to send our signal
fb1=1/(2*T);
y11=samples_from_bits(yb1,fb1,dt,p); % do look at the function
y011=samples_from_bits(yb01,fb1,dt,p);

% let us pick rate at which we want to send our signal
fb2=1/(T);
y12=samples_from_bits(yb1,fb2,dt,p); % do look at the function
y012=samples_from_bits(yb01,fb2,dt,p);

figure(2)
clf

subplot(421)
stem(y11);

subplot(422) 
stem(y12);

subplot(423)
eyediagram(y11,fb1,dt);

subplot(424)
eyediagram(y12,fb2,dt);

subplot(425)
stem(y011);

subplot(426) 
stem(y012);

subplot(427)
eyediagram(y011,fb1,dt);
title('with slower rate- you can detect cleary 0,1 bits')

subplot(428)
eyediagram(y012,fb2,dt);

return

