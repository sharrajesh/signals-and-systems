% first run the tut5_4a.m and then tut5_4b

%note that wk=2*pi*k/N
%try to understand more by [0:8]'*[0:8]
A=exp(-j*2*pi*[0:8]'*[0:8]/9);
H=Hm(:).*exp(j*Hp(:));
h=A\H;

hr=real(h);
r=[0:N-1];

figure(3)
clf

stem(r,hr);
grid

return;
