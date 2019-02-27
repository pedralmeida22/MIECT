m = 1000;
length_str = 40; 
n = 8000;
k = 3;
lengthTest = 10000;

positivosFalsos = testStr_kHash(n, lengthTest, k, m);

fprintf('Probabilidade de positivos falsos: %.4f\n', positivosFalsos/lengthTest);