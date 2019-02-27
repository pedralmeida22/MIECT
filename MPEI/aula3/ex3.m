# probabilidade condicionada

# M : manograma positivo
# NM : manograma nao positivo
# C : ter cancro 
# NC : nao ter cancro
# pC : probabilidade de ter cancro

# valor teorico com pC = 1 / 10000
pC = 1 / 10000;
prob = 0.9 * pC / (0.9 * pC + 0.1 * (1-pC))

# valor teorico com pC = 1 / 1000
pC = 1 / 1000;
prob2 = 0.9 * pC / (0.9 * pC + 0.1 * (1-pC))

# valor por simulacao pC = 1 / 10000
N = 1e6;
pC = 1 / 10000;

terCancro = rand(1, N) < pC;
darPositivo = zeros (1, N);
for i = 1 : N
  if terCancro(i) == 1
    darPositivo(i) = rand() < 0.9;
  else
    darPositivo(i) = rand() < 0.1;
  end
endfor

probSim = sum(terCancro & darPositivo) / sum(darPositivo)
