a=[-1/2 zeros(1,7) 3/4 0 3/4 zeros(1,7) -1/2 0]

a20=periodic(a,-9,0,19)
a120=periodic(a,-9,-20,99)

%understand this
w120=[-20*2*pi/20:2*pi/20:99*2*pi/20]

x20=20*ifft(a20)
x120=periodic(x20,0,-20,99)

clf
subplot(2,1,1)
stem(w120,a120)
xlabel('w')
ylabel('a')
grid

subplot(2,1,2)
stem([-20:99],x120)
xlabel('n')
ylabel('x')
grid
