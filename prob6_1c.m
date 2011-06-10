clear
clc

W=logspace(-2,2,100); 

m=1;
zeta=2^(-1/2);

k=1;
wn=(k/m)^(1/2);
a=[1 2*zeta*wn wn^2];
b=[wn^2];
H1=freqs(b,a,W);
ang1=angle(H1);
%pi: x :180
deg1=ang1.*(180/pi);

k=0.09;
wn=(k/m)^(1/2);
a=[1 2*zeta*wn wn^2];
b=[wn^2];
H2=freqs(b,a,W);
ang2=angle(H2);
%pi: x :180
deg2=ang2.*(180/pi);

k=4;
wn=(k/m)^(1/2);
a=[1 2*zeta*wn wn^2];
b=[wn^2];
H3=freqs(b,a,W);
ang3=angle(H3);
%pi: x :180
deg3=ang3.*(180/pi);

figure(3)
clf

subplot(211)
loglog(W,abs(H1),'r', W,abs(H2),'b', W,abs(H3),'g');
legend('k=1','k=0.09','k=4');
grid 

subplot(212)
semilogx(W,deg1,'r',W,deg2,'b',W,deg3,'g');
legend('k=1','k=0.09','k=4');
grid

return;
