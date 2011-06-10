% look into definition of filter on page 22 and prob2_2.m
clc

% preallocate xhat1
xhat1=zeros(N,1);
xhat1(1:p)=djia(1:p);

for i=p+1:N
    X1=xhat1(i-p:i-1)';
    xhat1(i)=-X1*a;
end

% because here are starting from a1 a2 to aN
% but we need them in reverse order i.e. from page 121 eq 6.27
% we need A1 for x(n) A2 for x(n-1) A3 for x(n-3) etc.
% 
% build new a, na by inverting the previous a
an=zeros(p,1);
for i=1:p
    an(p+1-i)=a(i);
end

% define b to be this new an but from the 6.27 page 121 since we have -ve
% used here hence same we will do
b=-an;

% preallocate xhat2 and X
xhat2=zeros(N,1);
xhat2(1:p)=djia(1:p);

for i=p+1:N
    X1=xhat2(i-p:i-1)';
    Y1=filter(b,1,X1);
    % we have to take the final value of Y 
    xhat2(i)=Y1(length(Y1));
    xhat2(i)
end

figure(2)
clf

subplot(211)
plot(week,djia(1:N),'r',week,xhat1,'b');
legend('djia','predicted djia')
xlabel('week')

subplot(212)
plot(week,djia(1:N),'r',week,xhat2,'g');
legend('djia','predicted djia with filter')
xlabel('week')

return

