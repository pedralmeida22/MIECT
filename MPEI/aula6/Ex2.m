% (a)

N = 1e5;
k = 1;
p = 0.5;
n = 10;
experiencias = rand(n, N) > p;
sucessos = sum(experiencias) == k;
probSimulacao = sum(sucessos)/N

% (b)

N = 1e5;
k = 1;
p = 1/6;
n = 15;
experiencias = rand(n, N) > p;
sucessos = sum(experiencias) == k;
probSimulacao = sum(sucessos)/N

% (c)

N = 1;
val = -4 + rand(20,N)*(14) % valores random entre -4 e 10
