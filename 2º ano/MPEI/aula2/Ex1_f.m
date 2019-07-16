#probabilidade condicional

N = 1e5;
p = 0.5;
k = 2; # n de vezes pretendido
n = 5; # n de opcoes

experiencias = rand(n, N) > p;
sucessos = sum(experiencias) >= 1;
prob1macho = sum(sucessos)/N

experiencias2 = rand(n, N) > p;
sucess = sum(experiencias2) >= k;
prob2macho = sum(sucess)/N

probFinal = prob2macho/prob1macho