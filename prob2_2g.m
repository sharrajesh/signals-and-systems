x2=[ones(1, 5) zeros(1,5)]
h=[0:5 zeros(1,4)]
y2=filter(h,1,x2)
stem(y2)