% (a)

N = 1e5;
p = 0.5;
n = 4;

experiencia = rand(n, N) < 0.5;
nCoroas = sum(experiencia);

pmf = histc(nCoroas, 0:n) / N;
stem([0 1 2 3 4], pmf)
xlabel('xi')
ylabel('P(X = xi)')


% (b)

%valor esperado E[X]
media = sum([0:n].*pmf)

%variancia Var(X) = E[(X-E(X)).^2] 
%       Ou Var(X) = E[X.^2] - E.^2[X]
var = sum(([0:n].*pmf - media).^2)

%Desvio padrao
% A raiz quadrada da variancia é o desvio padrao
desvioPadrao = sqrt(var)


% (c)

% O tipo da distribuição da variavel aleatoria 
% é Binomial.

% Formula teorica
% (n)p.^k(1-p).^(n-k)
% (k)


% (e) - i.
% prob. pelo menos 2 coroas = px(2)+px(3)+px(4)
sum(pmf(3:5))

% (e) - ii.
% prob. ate 1 coroa = px(0) + px(1)
sum(pmf(1:2))

% (e) - iii.
% prob. entre 1 e 3 coroas = px(1)+px(2)+px(3)
sum(pmf(2:4))