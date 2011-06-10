%rajesh
%roundoff the matrix passed to n digits after decimal
function ro=roff(x)
n=4;
N=10^n;
ro=(round(x*N))/N
end
