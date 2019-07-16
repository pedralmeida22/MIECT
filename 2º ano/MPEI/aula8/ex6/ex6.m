fileName = 'pg17186.txt';
wordsFromFile = readFile (fileName);

n =  length(wordsFromFile);                         
m = n * 15;                                     
k = round ((m / n) * log(2));                   
bloomFilter = initialize (m);

fprintf('\nCriando Bloom Filter para as palavras do ficheiro...\n');
for i = 1: n
    bloomFilter = insert (bloomFilter, k, wordsFromFile{i});
    valueBar =  i / n;
end
fprintf('\nDone!')

fprintf('Numero de ocorrencias das palavras: \n');
wordsFromFile = sort(unique(wordsFile));     % remove repeated words
n = length(wordsFromFile);
values = zeros(1, n);

for i = 1: n
    word = wordsFile{i};
    values(i) = count(bloomFilter, k, word);
    fprintf('\t%s -> %d\n', word, values(i));
end

[maxValue, maxIndex] = max(values);
fprintf('\n------------------------\nPalavra mais frequente: %s (%d times)\n', wordsFile{maxIndex}, maxValue);