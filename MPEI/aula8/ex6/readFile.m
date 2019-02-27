function [ wordsFromFile ] = readFile(fileName)
  file = fopen(fileName);
  file_contents = fscanf(file, '%c', inf);
  wordsFromFile = strsplit(file_contents);
end