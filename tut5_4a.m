clear
clc

N=9;
w=[-(N-1)/2:(N-1)/2].*2*pi/N;

for i=1:length(w)
    if (abs(w(i))<pi/2)
        H(i)=1;
    else
        H(i)=0;
    end
end

Hm=periodic(H,-(N-1)/2,0,N-1);
ws=[0:N-1].*2*pi/N;

range = [-3*pi 3*pi -1 2];

figure(1)
clf

subplot(211)
plot(w,H);
axis(range)
grid

subplot(212)
plot(ws,Hm);
axis(range)
grid

return;
