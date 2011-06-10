
clf

% see page 20 where conv is defined
Nx=length(xe2);
nx=-(Nx-1)/2;

Nh=length(hlin);
nh=-(Nh-1)/2;

% the conv will go from nx+nh to nx+nh+Nx+Nh-2
ny=nx+nh;
Ny_max=nx+Nx-1+nh+Nh-1;
Ny=Nx-1+Nh-1;

% range for y2
y2r=[ny:Ny_max];
y2=conv(xe2,hlin);

figure(4)
clf

stem(y2r,y2)
% stem(y2)

return
