
clear
clc

syms wn zeta

b=[wn^2];
a=[1 2*zeta*wn wn^1];

% for wn=1
b=subs(b,wn,1);
a=subs(a,wn,1);

% to define zeta between 0 and 10
zetarange=[0 logspace(-1,1,99)];
nzeta=length(zetarange);
azeta=zeros(nzeta,3);
for i=1:nzeta
    azeta(i,:)=subs(a,zeta,zetarange(i));
end

zetapoles=zeros(nzeta,2);
for i=1:nzeta
    zetapoles(i,:)=roots(azeta(i,:));
end

figure(1)
clf

for i=1:nzeta
    ps=zetapoles(i,:);
    plot(real(ps),imag(ps),'rX');
    hold on
end
axis('equal');
axis([-4 0 -2 2]);

i0=find(zetarange==0);
ps=zetapoles(i0);
text(real(ps),imag(ps),'0');

z=1/4; %0.25
nz=find_nearby(zetarange,z);
ps=zetapoles(nz,:);
text(real(ps),imag(ps),num2str(z));

z=0.5;
nz=find_nearby(zetarange,z);
ps=zetapoles(nz,:);
text(real(ps),imag(ps),num2str(z));

z=0.75;
nz=find_nearby(zetarange,z);
ps=zetapoles(nz,:);
text(real(ps),imag(ps),num2str(z));

z=1;
nz=find_nearby(zetarange,z);
ps=zetapoles(nz,:);
text(real(ps),imag(ps),num2str(z));

z=2;
nz=find_nearby(zetarange,z);
ps=zetapoles(nz,:);
text(real(ps),imag(ps),num2str(z));

return

