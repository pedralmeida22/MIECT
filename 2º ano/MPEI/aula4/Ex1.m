% plot funcao massa probabilidade

x = 1:6
px = ones(1,6)/6;
subplot(1,2,1)
stem(x, px)
xlabel('x')
ylabel('px')

% plot funcao distribuicao acumulada

Fx = cumsum([0 px 0])
subplot(1,2,2)
stairs(0:7,Fx)
axis([0 7 0 2])
xlabel('x')
ylabel('Fx(x)')