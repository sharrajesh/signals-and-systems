
prob8_4a

ns=1/dt ; % we know within 1 sec we can represent only ns samples
ns=fix(ns); % if ns came out to be fraction then we truncate it
ty=[0:ns-1]*dt; % continuous time instants for one second
y=zeros(1,ns); % preallocate y

% fb is the number of bits or pulses per sec 
% and if there are np samples per bit or pulse duration
% 
% maximum fb can be
% fb=ns/np; 
% fb=fix(fb); % if ns came out to be fraction then we truncate it
fb=ns/np;
fb=fix(fb); 

% if there are fb number bits or pulses per sec 
% then for each bit or pulse we have (1/fb) secs 
% and if in one sec we can have maximum of ns samples
% then number of samples we can have for (1/fb) secs is nspb
% if nspb came out to be fraction then we round off to next integer
nspb=ns/fb;
nspb=ceil(nspb); 
fprintf('number of samples per pulse allowed %d\n', nspb);

b=1; % begining
for i=1:fb
    e=b+np-1; % end
    if e > ns
        e=ns;
        y(b:e)=y(b:e)+p(1:e-b+1);
        break;
    else
        y(b:e)=y(b:e)+p;
    end
    b=b+nspb; 
end
% store first value
y1=y;

fb=1/(2*T); 
fb=fix(fb);
nspb=ns/fb; % maximum number of samples per bit that are available  
nspb=ceil(nspb);
fprintf('number of samples per pulse allowed %d\n', nspb);
y=zeros(1,ns); % zeros out y again
b=1; % begining
for i=1:fb
    e=b+np-1; % end
    if e > ns
        e=ns;
        y(b:e)=y(b:e)+p(1:e-b+1);
        break;
    else
        y(b:e)=y(b:e)+p;
    end
    b=b+nspb; 
end
% store second value
y2=y;

fb=1/T; 
fb=fix(fb);
nspb=ns/fb; % maximum number of samples per bit that are available  
nspb=ceil(nspb);
fprintf('number of samples per pulse allowed %d\n', nspb);
y=zeros(1,ns); % zeros out y again
b=1; % begining
for i=1:fb
    e=b+np-1; % end
    if e > ns
        e=ns;
        y(b:e)=y(b:e)+p(1:e-b+1);
        break;
    else
        y(b:e)=y(b:e)+p;
    end
    b=b+nspb; 
end

% store third value
y3=y;

figure(2)
clf

subplot(311)
stem(ty,y1);

subplot(312)
stem(ty,y2);

subplot(313)
stem(ty,y3);

return
