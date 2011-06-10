N=256;
x=(0.9).^[0:N-1];
t0=clock; %to set t0 to current time
X=dtfs_man(x,0);
c=etime(clock,t0);%store the elapsed time in c

t1=clock;
X1=(1/N)*fft(x);
c1=etime(clock,t1);