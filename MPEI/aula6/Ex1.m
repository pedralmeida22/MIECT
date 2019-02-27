% (a)

vector = lcg(3,3,3,5,1000);
subplot(131);
hist(vector,100);
unique(vector);


% (b)

vector2 = vector / 5;
subplot(132);
hist(vector2, 100);

% (c)

c = lcg(3,7.^5,0,2.^31,1000);
subplot(133);
hist(c,100);