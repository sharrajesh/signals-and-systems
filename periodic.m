%rajesh
%this function converts the periodic wave given in x which starts from
%n_init into repeating wave whose index start from ns and end at ne
function xp=periodic(x,n_init,ns,ne)

N=length(x);
nx=[n_init:n_init+N-1];

% figure
% subplot(2,1,1)
% stairs(nx,x)
% range = [-30 30 -1 5]
% axis(range)
% grid

%note that here we are trying to xp which is periodic and start from 0
%               |
%   -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0 1 2 3 4 5 6 7 8
%     1   2  2  1  1  1  2  2  1  1  1 2 2 1 1 1 2 2  

for n=ns:ne
    d=n-n_init;
    r=rem(d, N);
    i=n-ns;
    if (r>=0)
        xp(i+1)=x(r+1);
    else
        xp(i+1)=x(N+r+1);
    end
end

% subplot(2,1,2)
% stairs([ns:ne],xp)
% axis(range)
% grid
end
