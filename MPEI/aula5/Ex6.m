% distribuicao de Poisson 
n = 8000;
k = 7;
p = 1/1000;

lambda = n*p;

probPoisson = (lambda.^k / factorial(k)) * exp(-lambda) 


% distribuicao binomial 

N = 1e5;

experiencia = rand(n, N) < p;
defeitos = sum(experiencia);
sucessos = defeitos == k;
probBinomial = sum(sucessos) / N  %(demora bastante a calcular o resultado)

% valores muito proximos