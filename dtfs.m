function a=dtfs(x,n_init)
%note that here x is periodic but it's index starts from n_init
N=length(x)
xp=periodic(x,n_init,0,N-1)
a=1/N*fft(xp)
end
