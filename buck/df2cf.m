function [bc,ac]=df2cf(b,a)
%DF2CF Converts a filter from direct form to cascade form.
% Each filter in the cascade is assumed to be second-order.
%
% The correct usage is 
%
%   [bc,ac]=df2cf(b,a) 
%
% where 'b' and 'a' are vectors containing the coefficients of the
% direct form filter and 'bc' and 'ac' are matrices containing the
% coefficients for the second-order subsections. Each row of 'ac' and
% 'bc' contains the coefficients for a single second-order subsection.

%---------------------------------------------------------------
% copyright 1996, by John Buck, Michael Daniel, and Andrew Singer.
% For use with the textbook "Computer Explorations in Signals and
% Systems using MATLAB", Prentice Hall, 1997.
%---------------------------------------------------------------

N=length(b)-1;

z = roots(b);
p = roots(a);
for k=1:N/2,
    bc(k,:) = poly(z(2*k-1:2*k));
    ac(k,:) = poly(p(2*k-1:2*k));
end
bc(1,:) = b(1)*bc(1,:);
