%discrete time conv
% first note for what values of n h[n] will be valid
% h[n]=2del[n+1] -2del[n-1] is valid for n=-1 h[-1]=2
% and for n=1 h[1]=-2 and h = 0 for every thing
%
% x[n]=del[n]+del[n-2] is valid for n=0 x[0] = 1 and
% for n=2 x[2]=1 and it is 0 for all other values of n
%
% now fill h for all the above n domain selection
h=[2 0 -2]
nh=[-1:1]
x=[1  0 1]
nx=[0:2]
y=conv(h,x)
ny=[-1:3]
stem(ny,y)