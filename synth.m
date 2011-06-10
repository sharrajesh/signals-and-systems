%this returns the synthesis equation by taking in values of a
function x=synth(a)
syms k t T;

x=0;
for k=0:length(a)-1
    x=x+a(k+1)*exp(i*k*(2*pi/T)*t);
end
end
