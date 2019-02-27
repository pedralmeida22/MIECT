N = 1e4;                %Nr de experiencias
n = 5;                  %Nr de experiencias de bernoulli  
p = 0.3;                  
experiencias = rand(n, N); 
numPecas  = sum(experiencias < p);

prob = histc(numPecas, 0:n) / N;
stem(0:n, prob)
axis([-0.5 5.5 0 0.4])
xlabel('Numero de pecas defeituosas numa amostra de 5')
ylabel('Probabilidade')
title('Probabilidade de pecas defeituosas');

% (B)

% analiticamente
probT = 0;
for k = 0 : 2 
    probT = probT + factorial(5)/(factorial(5-k)*factorial(k))*0.3^k*(1-0.3)^(5-k);
end

probT

% simulacao
sucessos = sum(experiencias < 0.3) <= 2;
probS = sum(sucessos) / N;

probS