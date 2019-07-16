function y = jaccardDist(Set)
    %% Calcula a distancia de Jaccard entre todos os pares pela definic¸˜ao.
  setSize = length(Set);
  
  J=zeros(setSize);     % array para guardar distancias
  h= waitbar(0, 'Calculating');
  for n1= 1:setSize,
    waitbar(n1/setSize,h);
    for n2= n1+1:setSize,
      % intersection length
      intersectLength = length(intersect(Set{n1}, Set{n2}));
      
      % union
      unionLength = length(Set{n1}) + length(Set{n2}) - intersectLength;
      
      % jaccard distance
      J(n1, n2) = 1 - intersectLength / unionLength;
      
    end
  end
  delete (h)
endfunction
