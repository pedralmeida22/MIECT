% f(x) = (x + 5) / 30
x = [1:4];

fx = (x + 5)./30

if(min(fx)>=0 && max(fx)<=1 && sum(fx)==1)
  fprintf('A funcao pode representar a funcao de probabilidade')
else
   fprintf('A funcao nao pode representar a funcao de probabilidade')
end