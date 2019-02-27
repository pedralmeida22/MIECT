%% codigo 1
p = 0.5;
k = 2;
n = 3;
prob = factorial(n) / (factorial(n-k) * factorial(k)) * p^k * (1-p)^(n-k)

%% codigo 2
N = 1e5;
p = 0.5;
k = 2;
n = 3;
lancamentos = rand(n, N) > 0.5;
sucessos = sum(lancamentos) == k;
probSimulacao = sum(sucessos)/N