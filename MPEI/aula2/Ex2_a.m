N = 1e7;
p = 0.5;
k = 10; # n de vezes pretendido
n = 10; # n de opcoes

experiencias = rand(n, N) > p;
sucessos = sum(experiencias) == k;
prob = sum(sucessos)/N

