
clear
clc

N=17;

% we have to calculate hdd for n
n=[0:N-1];

% note that to get the perfect symmetry around nd we have to have
% N=2 nd + 1
% => that nd=511-1/2=255

% let us assume delay d is 255
d=(N-1)/2;

% then new n after delay d is
nd=n-d;

% h descrete after delay; preallocate space for better efficiency
hdd=zeros(1,length(nd));
for i=1:length(nd)
    if (nd(i)==0)
        hdd(i)=0;
    else
        hdd(i)=((-1)^nd(i))/nd(i);
    end        
end

% to see the symmetry 
% plot only smaller range r
r=(-6+d:6+d);

H=fftshift(fft(hdd,1024));

w=linspace(-pi,pi,1024);

figure(4)
clf

subplot(411)
plot(n,hdd);
title('delayed hdd')

subplot(412)
stem(n(r),hdd(r));
title('small range of delayed hdd')

subplot(413)
plot(w,abs(H));

subplot(414)
plot(w,unwrap(angle(H)));

return
