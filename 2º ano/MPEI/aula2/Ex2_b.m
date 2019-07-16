#probabilidade condicional

N = 1e7;
p = 0.5;
k = 11; # n de vezes pretendido
n = 10; # n de opcoes

experiencias = rand(n, N) > p;
sucessos = sum(experiencias) == 10;
prob = sum(sucessos)/N

exp = rand(n, N) > p;
sucess = sum(exp) == k;
prob2 = sum(sucess)/N

probFinal = prob2/prob