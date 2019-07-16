% a)
fprintf('a)\n')
M = [1/3 1/4 0;
     1/3 1/2 1/2;
     1/3 1/4 1/2]

isStochasticMatrix(M);


% b)
fprintf('b)\n')

x_b = [60/90; 15/90; 15/90]

% c)
fprintf('c)\n')

probB = M^30 * x_b
fprintf('grupo A ao fim da aula 30: %.0f\n', probB(1) * 90);
fprintf('grupo B ao fim da aula 30: %.0f\n', probB(2) * 90);
fprintf('grupo C ao fim da aula 30: %.0f\n', probB(3) * 90);

% d)
fprintf('d)\n')

x_d = [30/90; 30/90; 30/90]
probD = M^30 * x_d
fprintf('grupo A ao fim da aula 30: %.0f\n', probB(1) * 90);
fprintf('grupo B ao fim da aula 30: %.0f\n', probB(2) * 90);
fprintf('grupo C ao fim da aula 30: %.0f\n', probB(3) * 90);