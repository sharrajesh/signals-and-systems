
clear
clc

syms wn zeta

b=[wn^2];
a=[1 2*zeta*wn wn^1];

% for zeta=1/4
b=subs(b,zeta,1/4);
a=subs(a,zeta,1/4);

% to define w between 0 and 10
wrange=[0 logspace(-1,1,99)];
nw=length(wrange);
azeta=zeros(nw,3);
for i=1:nw
    azeta(i,:)=subs(a,wn,wrange(i));
end

wpoles=zeros(nw,2);
for i=1:nw
    wpoles(i,:)=roots(azeta(i,:));
end

figure(1)
clf

for i=1:nw
    ps=wpoles(i,:);
    plot(real(ps),imag(ps),'rX');
    hold on
end
axis('equal');
axis([-4 0 -2 2]);

wi=1; 
nwi=find_nearby(wrange,wi);
ps=wpoles(nwi,:);
text(real(ps),imag(ps),num2str(wi));

wi=2; 
nwi=find_nearby(wrange,wi);
ps=wpoles(nwi,:);
text(real(ps),imag(ps),num2str(wi));

wi=3; 
nwi=find_nearby(wrange,wi);
ps=wpoles(nwi,:);
text(real(ps),imag(ps),num2str(wi));

wi=4; 
nwi=find_nearby(wrange,wi);
ps=wpoles(nwi,:);
text(real(ps),imag(ps),num2str(wi));

return

