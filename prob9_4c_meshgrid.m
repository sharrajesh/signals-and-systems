
clear
clc

b1=[4];
a1=[1 2 17];

% x=[1:3]; % row axis
% y=[10:14]; % column axis
% [X,Y] = meshgrid(x,y) 
% 
% Note that row axis x is repeated length(y) times and column 
% axis y is repeated length(x) times.
% 
% X =
%      1     2     3
%      1     2     3
%      1     2     3
%      1     2     3
%      1     2     3
% Y =
%     10    10    10
%     11    11    11
%     12    12    12
%     13    13    13
%     14    14    14
% 
w=[-10:0.5:10]; % which is the column y axis
sigma=-1+(1/8)*(1:32); % which is the row x axis
[sigmagrid,wgrid]=meshgrid(sigma,w);
sgrid=sigmagrid+j*wgrid;

H1=polyval(b1,sgrid)./polyval(a1,sgrid);

figure(3)
clf

subplot(311)
mesh(sigma,w,abs(H1));
hold on;
plot3(zeros(1,41),w,abs(H1(:,8))+0.05,'r');
xlabel('sigma');
ylabel('w');
zlabel('H1');
title('default view');

% doc view
subplot(312)
mesh(sigma,w,abs(H1));
xlabel('sigma');
ylabel('w');
zlabel('H1');
view([-80 30]);
title('just behind the sigma=-1 view -80 30');

subplot(313)
mesh(sigma,w,abs(H1));
xlabel('sigma');
ylabel('w');
zlabel('H1');
view([0 30]);
title('jw axis view 0 30');

return
