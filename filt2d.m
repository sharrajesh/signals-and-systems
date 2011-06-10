%rajesh
%this is the function to compute 2 dimension filter
%
%here b and a are the filter coefficients same as in filter command
%d is delay associated with the causal implementation which is n/2 where n
%is the order
function y=filt2d(b,a,d,x)

[m,n]=size(x);

%step1- for all the columns in x filter the input and store the output in z
for col=1:n
    xn=x(:,col);
    xnd=[xn;zeros(d,1)];
    cnd=filter(b,a,xnd);
    cn=cnd(d+1:length(cnd));
    z(:,col)=cn;
end

%step2- for all the rows in z filter the input and store the output in y
for row=1:m
    zm=z(row,:);
    zmd=[zm zeros(1,d)];
    rmd=filter(b,a,zmd);
    rm=rmd(d+1:length(rmd));
    y(row,:)=rm;
end

return