N = 1e5;
p = 0.5;
k = 1;
n = 2;
experiencias = rand(n, N) > p;
sucessos = sum(experiencias) >= k;
probSimulacao = sum(sucessos)/N
