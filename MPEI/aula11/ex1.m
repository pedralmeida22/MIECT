% a)

fprintf('a)\n')
% 2 estados possiveis: nao faltar
%                      faltar

M = [0.7 0.8; 0.3 0.2]
isStochasticMatrix(M);
v_a = [1; 0]
probA = M^2 * v_a

% b)
fprintf('b)\n')
v_b = [0; 1]
probB = M^2 * v_b


% c)
fprintf('c)\n')
v_c = [1; 0]
probC = M^(15*2) * v_c

% d)
fprintf('d)\n')
v_d = [0.85; 0.15];
probD = zeros(1, 30);
for i = 1: 30
  temp = M^(i) * v_d;
  probD(i) = temp(2);
endfor

plot(probD)