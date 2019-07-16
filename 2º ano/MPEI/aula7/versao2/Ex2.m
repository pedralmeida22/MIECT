% Ex2 - repetir ex3 e ex4 da versao1

% Portuguese Alphabet
alphabet = ['A':'Z' 'a':'z' 'À', 'Á', 'Â', 'Ã', 'Ç', 'É', 'Ê', 'Í', 'Ó', 'Ô', 'Õ', 'Ú', 'a':'z', 'à', 'á', 'â', 'ã', 'ç', 'é', 'ê', 'í', 'ó', 'ô','õ', 'ú'] 

%  ficheiros
ficheiros={'pg21209.txt','pg26017.txt'};

pmfPT=pmfLetrasPT(ficheiros, alphabet);

figure
stem(pmfPT)

distPT = cumsum(pmfPT);

n = 1000;
loadFactor = 0.8;

m = round(n/loadFactor);
count_djb2 = zeros(1, m);
count_sdbm = zeros(1, m);

for i=1: n
  chave = generateString(10, 5, alphabet, distPT);
  valor_djb2 = mod(string2hash(chave), m) + 1;
  valor_sdbm = mod(string2hash(chave,'sdbm'), m) + 1;
  count_djb2(valor_djb2) = count_djb2(valor_djb2) + 1;
  count_sdbm(valor_sdbm) = count_sdbm(valor_sdbm) + 1;
  
  if rem(i, 25) == 0
    subplot(221)
    bar(count_djb2)
    grid on
    title('Num strings -> djb2')
    
    subplot(222)
    hist(count_djb2,0:9)
    grid on
    title('Histograma de strings -> djb2')
    
    subplot(223)
    bar(count_sdbm)
    grid on
    title('Num strings -> sdbm')
    
    subplot(224)
    hist(count_sdbm,0:9)
    grid on
    title('Histograma de strings -> sdbm')
  end
end


% Ex4

x = [0:9];

% djb2

figure

subplot(121)
sucess_djb2 = histc(count_djb2, 0:9);
pmfX_djb2 = sucess_djb2 / m;
stem(0:9, pmfX_djb2);
title('Variavel aleatoria X pmf -> djb2')

e_x_DJB2 = sum(x.*pmfX_djb2)
e_x2 = sum((x.^2).*pmfX_djb2);
variancia_DJB2 = e_x_DJB2 - e_x_DJB2^2

%sdbm

subplot(122)
sucess_sdbm = histc(count_sdbm, 0:9);
pmfX_sdbm = sucess_sdbm / m;
stem(x, pmfX_sdbm);
title('Variavel aleatoria X pmf -> sdbm')

e_x_SDBM = sum(x.*pmfX_sdbm)
e_x2 = sum((x.^2).*pmfX_sdbm);
variancia_SDBM = e_x_SDBM - e_x_SDBM^2