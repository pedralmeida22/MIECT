clc
T = rand(20, 20);

for i=1 : 20
  T(:, i) = T(:, i) / sum(T(:, i));
endfor

isStochasticMatrix(T)

ini = zeros(20, 1);
ini(1) = 1;

fprintf('20 transicoes: %f\n', T^20 * ini);
fprintf('40 transicoes: %f\n', T^40 * ini);
fprintf('100 transicoes: %f\n', T^100 * ini);