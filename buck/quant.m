function qc = quant(x,N,m)
%QUANT quantizes the elements of a vector.
% 
% Usage:  q = quant(x,N,m) 
%
% Each element of the vector 'x' is quantized into 2^N bit values,
% where 'm' is the value of the maximum amplitude of any element in
% 'x'.  The quantized levels are from -m to m (not including m). 

%---------------------------------------------------------------
% copyright 1996, by John Buck, Michael Daniel, and Andrew Singer.
% For use with the textbook "Computer Explorations in Signals and
% Systems using MATLAB", Prentice Hall, 1997.
%---------------------------------------------------------------

[mm,nn]=size(x);
qc=zeros(mm,nn);
levels = 2^(N-1);
maxlevel = 2^N-1;

for k=1:mm,
  tmp = fix((x(k,:)+m) ./ (m/levels));
  q = zeros(1,nn);
  q(tmp <= maxlevel) = tmp(tmp <= maxlevel);
  q(tmp > maxlevel) = maxlevel * ones(1,length(tmp(tmp > maxlevel)));
  q(tmp < 0) = zeros(tmp(tmp < 0));
  q = (q-levels)*m/levels;
  qc(k,:)=q;
end

