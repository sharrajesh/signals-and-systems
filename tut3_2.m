% using freqz to find frequency responce of difference equation
a=[1 -0.8]
b=[2 0 -1]
[h1 omega1]=freqz(b,a,4)
[h2 omega2]=freqz(b,a,4,'whole')
