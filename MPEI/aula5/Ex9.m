lambda = 1;
k = 0; % 0 erros

% 1 - P(sem erros)
probPoisson = 1 - ((lambda.^k)./factorial(k) * exp(-lambda))