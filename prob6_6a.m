clear
clc

load djia
prin=1000;
N=length(djia);
week=[1:N];

%cummulative djia account starting with prin
% preallocate cdjia
cdjia=zeros(1,N);
cdjia(1)=prin;
for i=2:N
    cdjia(i)=cdjia(i-1)*djia(i)/djia(i-1);
end

%cummulative djia account starting with p
r=3;
% preallocate csave
csave=zeros(1,N);
csave(1)=prin;
for i=2:N
    csave(i)=prin*(1+r/(100*52))^(i-1);
end

fprintf('p after investing in djia \t\t\t %f\n', cdjia(N-1));
fprintf('p after investing in saving account  %f\n', csave(N-1));

figure(1)
clf

subplot(211)
plot(week,djia,'r',week,cdjia,'b',week,csave,'m');
legend('djia','cummulative account value using djia','cummulative account value using saving');
xlabel('week')

subplot(212)
semilogx(week,djia,'r',week,cdjia,'b',week,csave,'m')
legend('djia','cummulative account value using djia','cummulative account value using saving');
xlabel('logrithmic weeks')

return

