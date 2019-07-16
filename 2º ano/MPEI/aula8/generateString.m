function y = generateString()
    alphabet = ['a':'z' 'A':'Z' '1', '2', '3', '4', '5', '6' '7', '8', '9', '0'];
    files = {'pg21209.txt', 'pg26017.txt'}
    pmfPT = pmfLetrasPT(files, alphabet);
    distPT = cumsum(pmfPT);
    length = 40;
    str = '';
    for i=1 : length
      letterIndex = find(distPT > rand());
      str(i) = alphabet(letterIndex(1));
    end
endfunction