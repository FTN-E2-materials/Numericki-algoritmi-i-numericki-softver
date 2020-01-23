clc
clear all

x = [0.0000 1.2500 2.5000 3.7500 5.0000];
fX = [1.7499 0.9830 1.2554 3.0802 2.3664];
scatter(x, fX, 'black'), hold on

p = lSquares(x, fX, 3)

x = linspace(min(x), max(x), 100);
pX = polyval(p, x);
plot(x, pX, 'red'), hold off

