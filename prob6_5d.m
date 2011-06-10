
s1o=filter(b,a,s1);
s2o=filter(b,a,s2);
s3o=filter(b,a,s3);

n=[0:length(s1o)-1];

figure(7)
clf

subplot(311)
plot(n,s1o)
title('filter output of p*cos(w1*n)');

subplot(312)
plot(n,s2o)
title('filter output of p*cos(w2*n)');

subplot(313)
plot(n,s3o);
title('filter output of p*cos(w3*n)');

% this looks like that the filter should cause a delay of
% 10 secs 5 secs and 1 sec
% 
% by comparing with the result of 5c1 we can see that the inputs are
% delayed by 10, 5 , 1 secs
return