% first run prob6_3a.m

% to get the expansion in freq domain by multiple 2 we have to do the 
% sample rate compression in time domain factor 2
for i=1:l/2
    h41(i)=h(2*i);
end

% since after compression in time domain the freq resp magni halved
% hence to make the mag same as before we have to multiply it with 2
h4=h41*2;

l4=length(h4);
H4=fftshift(fft(h4,1024));
n4=[-l4/2:(l4/2)-1];

figure(4)
clf

subplot(411)
plot(n1,h);
grid
a1=axis;
axis([a1(1:2) 2*a1(3:4)]);
a=axis
title('impulse h')

subplot(412)
plot(w,abs(H));
grid
title('magnitude H')

subplot(413)
plot(n4,h4);
grid
axis(a)
title('impulse h4')


subplot(414)
plot(w,abs(H4));
grid
title('magnitude H4')

return
