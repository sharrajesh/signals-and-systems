function X=dtftsinc(M,w)
%DTFTSINC calculates samples of the discrete-time sinc function.
% 
% Usage: X=dtftsinc(M,w)
%
% The vector 'X' contains 'X = sin(Mw/2)/sin(w/2)', where selective
% indexing is used to avoid division by 0.

%---------------------------------------------------------------
% copyright 1996, by John Buck, Michael Daniel, and Andrew Singer.
% For use with the textbook "Computer Explorations in Signals and
% Systems using MATLAB", Prentice Hall, 1997.
%---------------------------------------------------------------

den=sin(w/2);
num=sin(M*w/2);
X=zeros(size(w));
X(den~=0)=num(den~=0)./den(den~=0);
X(den==0)=M;
