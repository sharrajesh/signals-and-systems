%run prob6_5a.m

s11=[s1;zeros(437,1)];
s21=[s2;zeros(437,1)];
s31=[s3;zeros(437,1)];

S1=fft(s11);
S2=fft(s21);
S3=fft(s31);

w11=[0:511]*2*pi/512;

figure(6)
clf

plot(w11,abs(S1),'r',w11,abs(S2),'g',w11,abs(S3),'b',w,tau,'m');
grid minor
legend('FFT of s1=p(n)*cos(w1*n)','FFT of s2=p(n)*cos(w2*n)','FFT of s3=p(n)*cos(w3*n)','group delay for freq');

% this looks like that the filter should cause a delay of
% % 10 secs 5 secs and 1 sec

return

