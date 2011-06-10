
clear
clc

% cutoff freq
W=pi/2;
N=100;
% N=100;
l=2*N+1;
wl=linspace(-pi,pi,l);
wl02pi=linspace(0,2*pi,l);
nl=[-N:N];

X=zeros(1,l);
for i=1:l
    if abs(wl(i)) <= W
        X(i)=1;
    end
end

% to left shift by N
% X=X.*exp(j*wl*N);
% x=ifft(ifftshift(X));
% this seems to do the trick to convert the freq response to impulse resp
% first ifftshift defines X from 0 to 2pi and define ak for wk=2pik/N
% then fftshift after ifft defines x over-N:N
x=(ifft(ifftshift(X)));

% x=real(x);
X1=fftshift(fft(x));

x1=ifft(ifftshift(X1));

figure(2)
clf

subplot(321)
plot(wl,abs(X));
% stem(wl,abs(X));
title('abs(X)')

subplot(322)
% stem(wl02pi,ifftshift(X));
plot(wl,unwrap(angle(X)));
title('unwrapped angle(X)')

subplot(323)
plot(nl,real(x));
title('real x')

subplot(324)
plot(wl,abs(X1));
title('abs(X1)')

subplot(325)
plot(wl,unwrap(angle(X1)));
title('unwrapped angle(X1)')

subplot(326)
plot(nl,real(x1));
title('real x1')

return

