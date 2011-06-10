
clear
clc

x=[0 1 2 3 4 5 6 7 8];
fftx=fftshift(x);
ifftx=ifftshift(x);
fprintf('x=');
fprintf(' %d',x);
fprintf('\n');

fprintf('fftx=');
fprintf(' %d',fftx);
fprintf('\n');

fprintf('ifftx=');
fprintf(' %d',ifftx);
fprintf('\n');

% cutoff freq
W=pi/2;

% time domain
N=20;
% N=100;
n=[-N:N];

% by table 5.2 signals and systems page392
syms n0
x_n0=sin(W*n0)/(pi*n0);
x=subs(x_n0,n0,n);

% we know that at n=0 we have to use l'hospitals rules
% when n0=0 diff both num and deno with respect to n0
% x_n0=W*cos(W*n0)/pi
% diff(x_n0,n0)
% x_n0=W*cos(W*n0)/pi
% x=W/pi;
nan=find(isnan(x));
x(nan)=W/pi;

% note that after fft and fftshift X will always be defined from -pi to pi
w=linspace(-pi,pi,length(x));
X=fftshift(fft(x));

% since l is > length(x); (l-length(x)) num of zeros will be appended 
% before fft will be calculated
l=2*length(x);
wl=linspace(-pi,pi,l);
Xl=fftshift(fft(x,l));

% since length(x) is odd hence we have to do ifftshift first
% also note that after ifftshift and ifft x will always be defined from 
% from the same range original x was input from i.e. -N:N
xi=ifft(ifftshift(X));

% but since (l-length(x)) zeros were appended hence it must have been
% defined from [-N:N+l-length(x)];
% where length(x)=2*N+1 and l=2*length(x) => 4*N+2
% N+l-length(x)=N+4*N+2-2*N-1=3*N+1
nl=[-N:3*N+1];
xil=ifft(ifftshift(Xl));

% to do a time shift by alpha samples in time domain
% note here w is defined over the same range where X is defined on
alpha=N;
Xs=X.*exp(-j*w*alpha);
xsi=ifft(ifftshift(Xs));

Xsl=Xl.*exp(-j*wl*alpha);
xsil=ifft(ifftshift(Xsl));

figure(1)
clf

subplot(621)
plot(n,x);
title('x');

subplot(622)
plot(w,abs(X));
title('abs(X)');

subplot(623)
plot(w,unwrap(angle(X)));
title('uwrapped angle X');

subplot(624)
plot(n,real(xi));
title('real xi');

subplot(625)
plot(wl,abs(Xl));
title('abs(Xl)');

subplot(626)
plot(w,unwrap(angle(X)));
title('uwrapped angle Xl');

subplot(627)
plot(nl,real(xil));
title('real xil');

subplot(628)
plot(n,real(xil(1:length(n))));
title('real xil');

subplot(629)
plot(w,abs(Xs));
title('abs(Xs)');

subplot(6,2,10)
plot(w,unwrap(angle(Xs)));
title('uwrapped angle Xs');

subplot(6,2,11)
plot(n,real(xsi));
title('real xsi');

subplot(6,2,12)
plot(nl,real(xsil));
title('real xsil');

return