%synthesizing signals with dtfs 
function a=dtfs_man(x,n_init)

N=length(x);

xp=periodic(x,n_init,0,N-1);

for k=0:N-1
    a(k+1)=0;
    for n=0:N-1
        a(k+1)=a(k+1)+xp(n+1)*exp(-1*j*k*(2*pi/N)*n);
    end
    a(k+1)=(1/N)*a(k+1);
end

figure
subplot(2,1,1)
stem(real(a),'r')
title('real a')
subplot(2,1,2)
stem(imag(a),'b')
title('imag a')

%confirming the result with fft
afft=1/N*fft(xp)

figure
subplot(2,1,1)
stem(real(afft),'r')
title('real afft')
subplot(2,1,2)
stem(imag(afft),'b')
title('imag afft')

end