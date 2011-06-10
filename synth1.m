%this returns the synthesis equation by taking in values of a
function x=synth1(a,T,k)
syms t;
x=0;
for k1=k
    x=x+a(k1-k(1)+1)*exp(i*k1*(2*pi/T)*t);
end
end
