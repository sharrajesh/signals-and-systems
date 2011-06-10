% first run the tut5_4a.m
n0=(N-1)/2;
Ha=-w.*n0; %original angle/phase

Hp=periodic(Ha,-(N-1)/2,0,N-1);

figure(2)
clf

subplot(211)
plot(w,Ha);
ro=axis; %range original
rn=[-3*pi 3*pi ro(3:4)];%range new
axis(rn);
grid

subplot(212)
plot(ws,Hp);
ro=axis; %range original
rn=[-3*pi 3*pi ro(3:4)];%range new
axis(rn);
grid

return;
