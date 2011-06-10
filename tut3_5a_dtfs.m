%synthesizing signals with dtfs 
a=[1 0 exp(j*(pi/4)) 0 2*exp(j*(pi/3))]
na=[0:4]
N=length(a)

for n=0:N-1
    x(n+1)=0
    for k=0:N-1
        x(n+1)=x(n+1)+a(k+1)*exp(j*k*(2*pi/N)*n)
    end
end

hfig1=figure(1)
clf(hfig1)

stem(na,real(x),'r')
hold
stem(na,imag(x),'b')
legend('real', 'imaginary')

%confirming the result with ifft
xifft=N*ifft(a)

hfig2=figure(2)
clf(hfig2)

stem(na,real(xifft),'r')
hold
stem(na,imag(xifft),'b')
legend('real-xifft', 'imaginary-xifft')
