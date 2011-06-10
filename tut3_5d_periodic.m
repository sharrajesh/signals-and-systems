x1=[ones(1,8)]
nx1=[0:length(x1)-1]

x2=[ones(1,8) zeros(1,8)]
nx2=[0:length(x2)-1]

x3=[ones(1,8) zeros(1,24)]
nx3=[0:length(x3)-1]

N=64
for n=0:N-1
    r=rem(n,length(x1))
    x11(n+1)=x1(r+1)
end
subplot(3,1,1)
plot(x11)

for n=0:N-1
    r=rem(n,length(x2))
    x22(n+1)=x2(r+1)
end
subplot(3,1,2)
plot(x22)

for n=0:N-1
    r=rem(n,length(x3))
    x33(n+1)=x3(r+1)
end
subplot(3,1,3)
plot(x33)
