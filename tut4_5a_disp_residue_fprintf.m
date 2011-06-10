% understanding about fftshift
clear
clc

syms w

H1=(j*w-2)/((j*w)^2+3/2*j*w+1/2); % by analysis

fprintf('H1=\n');
pretty(H1)

a1=[1 3/2 1/2];
b1=[1 -2];

[r1,p1]=residue(b1,a1);

r1=r1'; % take transpose of r1 and p1 since residue returns colums vectors
p1=p1';

H1_jw = 0;
for m=1:length(r1)
    H1_jw=H1_jw+r1(m)/(j*w-p1(m));
end

fprintf('H1_jw=');
pretty(H1_jw)

%note that simplify with n=100 is the same for both

disp('H1 after simplify 100');
pretty(simplify(H1,100))

disp('H1_jw after simplify 100');
pretty(simplify(H1_jw,100))
