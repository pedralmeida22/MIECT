function y = testStr_kHash(bloomFilterSize, lengthTest, k, numOfStrings)
  B = initialize(bloomFilterSize);
  
  for i=1: numOfStrings
    str = generateString();
    B = insert(B, k, str);
  endfor
  
  positivosFalsos = 0;
  for i=1: lengthTest
    string = generateString();
    v = isMember(B, k, string);
    
    if v == 1
      positivosFalsos = positivosFalsos + 1;
    end 
    
   end 
  
endfunction
