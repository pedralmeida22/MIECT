members = {'Portugal', 'Espanha', 'França', 'Italia', 'Alemanha'};
test = {'Portugal', 'Franca', 'Argentina', 'China', 'Eslovaquia'};

m = 100;
k = 3;
B = initialize(m);

for i = 1: length(members)
  B = insert (B, k, members{i});
endfor

for i = 1: length(test)
  contains = isMember(B, k, test{i});
  if (contains == 1)
    test{i}
  endif
endfor