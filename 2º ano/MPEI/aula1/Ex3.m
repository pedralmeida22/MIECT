%% codigo 1
p = 0.5;     %%prob de sair cara
k = 6;       %%numero de caras
n = 15;       %%numero de lancamentos

%%somatorio
prob = 0;
for k = 6 : 15
  prob = prob + factorial(n) / (factorial(n-k) * factorial(k)) * p^k * (1-p)^(n-k)
end

%% codigo 2
N = 1e5;
p = 0.5;
k = 6;
n = 15;
lancamentos = rand(n, N) > 0.5;
sucessos = sum(lancamentos) >= k;
probSimulacao = sum(sucessos)/N