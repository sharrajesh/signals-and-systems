N=30
x=[1 1 zeros(1,N-2)]
a=(1/N)*fft(x)
subplot(2,1,1)
stem(real(a))
subplot(2,1,2)
stem(imag(a))
figure
x1=N*ifft(a)
subplot(2,1,1)
stem(real(x1))
subplot(2,1,2)
stem(imag(x1))
