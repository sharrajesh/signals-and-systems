% rajesh
% 
% yb is the actual bits that we want to represent
% fb is the rate at which bits needs to sent
% dt is time period of each sample
% p is the pulse represent 1
function y=samples_from_bits(yb,fb,dt,p)

% let us now represent a 1 pulse and 0 pulse
p1=p;
p0=-p;
np=length(p);

% the rate at which we want to send the bits is fb
% the time required for each bit is then 1/fb secs
% since each sample duration is dt secs
% hence number of samples per bit (nspb) is (1/fb)/dt=1/fb/dt=1/(fb*dt)
% 
% also note that
% if 1/(fb*dt) samples are used to represent 1 bit then length(yb) samples
% will represent length(yb)*(fb*dt) bits
nspb=1/fb/dt;
nspb=ceil(nspb);

% now lets use build y using yb with nspb samples per bit
% if 1 bit is represented by nspb samples then length(yb) bits are
% represented by length(yb)*nspb
ny=length(yb)*nspb;
y=zeros(1,ny);

b=1; % begining
for i=1:length(yb)
    if yb(i) == 0
        pt=p0;
    else
        pt=p1;
    end
    e=b+np-1; % end
    if e > ny
        e=ny;
        y(b:e)=y(b:e)+pt(1:e-b+1);
        break;
    else
        y(b:e)=y(b:e)+pt;
    end
    b=b+nspb; 
end

end
