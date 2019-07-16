Set = loadFromFile('u.data');
J = jaccardDist(Set);
pairs = similarPairs(Set, J, 0.4);