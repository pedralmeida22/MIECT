% (a)
% X < 3

%teorico
%P(0 <= X < 3) = 3-0 / 10 -0
pA = 3/10

%simulacao
N = 1e3;
X = 0 + rand(1,N)*(10-0); % valores random entre 0 e 10
sucessosA = sum(X < 3);
probA = sucessosA/N


% (b)
% X > 7

%teorico
pB = 3/10

%simulacao
N = 1e3;
X = 0 + rand(1,N)*(10-0); % valores random entre 0 e 10
sucessosB = sum(X > 7);
probB = sucessosB/N


% (c)
% 1 < X < 6

%teorico
pC = 5/10

%simulacao
N = 1e3;
X = 0 + rand(1,N)*(10-0); % valores random entre 0 e 10
sucessosC = sum(X > 1 & X < 6);
probC = sucessosC/N