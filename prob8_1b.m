
clear
clc

N=20;
n=[-N:N];
Nt=2*N+1;
w=linspace(-pi,pi,Nt);

% building the freq responce of the system
H=zeros(1,Nt);
for i=1:Nt
    if (w(i) < 0)
        H(i)=j;
    elseif (w(i) > 0) %note that this is different from the book
        H(i)=-j;
    end
end

% to produce a shift in time domain by alpha time sample and since H is
% define over w
alpha=N;
Halpha=H.*exp(-j*w*alpha);

figure(2)
clf

subplot(411)
plot(w,abs(H));
title('abs value of H');

subplot(412)
plot(w,unwrap(angle(H)));
title('unwrapped angle of H');

subplot(413)
plot(w,abs(Halpha));
title('abs value of shifted Halpha');

subplot(414)
plot(w,unwrap(angle(Halpha)));
% plot(w,-w.*alpha+unwrap(angle(H)));
title('unwrapped angle of shifted Halpha');

return
