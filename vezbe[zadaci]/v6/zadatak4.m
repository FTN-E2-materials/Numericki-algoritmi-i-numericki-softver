clc
clear all

x = [0 1 2 3 4 5];
fX = [5 3 5 1 3 5];
scatter(x, fX, 'black'), hold on

p = lSquares(x, fX, 5)

x = linspace(min(x), max(x), 100);
pX = polyval(p, x);
plot(x, pX, 'red')

dp = polyder(p); % polyder nalazi izvod polinoma kao polinom
min = zeroFalsePosition(@(x) polyval(dp, x), 3, 4, 10^-5, 0.0)
pMin = polyval(p, min);
scatter(min, pMin, 'red')
max = zeroFalsePosition(@(x) polyval(dp, x), 4, 5, 10^-5, 0.0)
pMax = polyval(p, max);
scatter(max, pMax, 'red'), hold off

