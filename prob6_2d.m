%first run prob6_2a and prob6_2c

x16=x(:,16);

%range r
r=[0:31];

%note that to be able to compute the output of a non causal filter using
%matlab filter command or to induce an advance by size d we will have to
%append d zeros to the right
%
%then take only the subset of output starting from d+1
d=n1/2;
x16d=[x16;zeros(d,1)];
y16d=filter(b1,a1,x16d);
y16_1=y16d(d+1:length(y16d));

%get the output using the second filter
d=n2/2;
x16d=[x16;zeros(d,1)];
y16d=filter(b2,a2,x16d);
y16_2=y16d(d+1:length(y16d));

%get the output using the third filter
d=n3/2;
x16d=[x16;zeros(d,1)];
y16d=filter(b3,a3,x16d);
y16_3=y16d(d+1:length(y16d));

colormap(gray);

figure(6)
clf

plot(r, x16,'r', r, y16_1, 'g', r, y16_2,'b', r, y16_3, 'm');
a=axis
axis([a(1:3) a(4)+1]);
legend('input x16','output by noncausal filter 1','output by noncausal filter 2', 'output by noncausal filter 3');

grid

return
