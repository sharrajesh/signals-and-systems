
clear
clc

% total number of samples to be taken between 2pi and -2pi
N=2000;

% sampling period
T=1;

% cutoff freq
wc=pi;

% freq domain to sketch on
w=linspace(-2*pi,2*pi,N);

Hd=zeros(1,length(w));

for i=1:length(w)
    if abs(w(i)) < pi
        Hd(i)=j*w(i)/T;
    else
        Hd(i)=0;
    end
end

figure(1)
clf

subplot(211)
plot(w,abs(Hd));

subplot(212)
plot(w,angle(Hd));

return 
