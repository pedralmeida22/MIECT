% Espaco amostragem S = {cada uma das 100 notas}
% probabilidade dos acontecimentos elementares:
% P(5) = 90/100 = 0.9
% P(50) = 9/100 = 0.09
% P(100) = 1/100 = 0.01

% Variavel aleatoria X -> S_X
% espaco amostragem de S_X = {5, 50, 100}

% P(X = xi) = 0.9 , xi = 5
%             0.09 , xi = 50
%             0.01 , xi = 100

stem([5, 50, 100],[0.9, 0.09, 0.01])
xlabel('xi')
ylabel('P(X = xi)')
axis([0 100 0 1])