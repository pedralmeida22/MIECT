function [ true ] = isStochasticMatrix( H )
%UNTITLED Verifiyes if a Matrix is Stochastic
%   Returns 1 if H is a Stochastic Matrix, else 0

HH = sum(H);
  if (AequalsB(max(max(HH)), min(min(HH))) && AequalsB(min(min(HH)), 1) && min(min(H)) >= 0 && max(max(H)) <= 1)
      fprintf('E uma matriz estocastica\n');
  else
      fprintf('Nao é uma matriz estocastica\n')
      true = 0;
  end

end

% abs(a-b) < 1e4*eps(a,abs(b)))  is a replacement
% to ensure comparations with a number (for example max(max(HH)) == 1) works all the times
% otherwise, sometimes a Matrix is not a Stochastic Matrix according to
% isStochasticMatrix method, even if it is

% that happens because a == 1 compares with 1
% but the sum of the columns of the matrix might be 1.000000000001, for example

% Source: https://www.mathworks.com/matlabcentral/answers/97069-how-can-i-compare-numbers-for-equality-within-a-tolerance-in-matlab-8-0-r2012b
function [ true ] = AequalsB (A, B)
    true = abs(A-B) < 1e4*eps(min(abs(A),abs(B)));
end