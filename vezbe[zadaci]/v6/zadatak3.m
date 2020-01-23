clc
clear all

f = @(x) x.^2.*sin(x);
a = -pi;
b = pi;

x = linspace(a, b, 100);
fX = f(x);
plot(x, fX, 'black'), hold on

x = linspace(a, b, 4);
fX = f(x);
p = lSquares(x, fX, 3);

x = linspace(min(x), max(x), 100);
pX = polyval(p, x);
plot(x, pX, 'red')

fp = @(x) f(x) - polyval(p, x);
x1 = zeroFalsePosition(fp, -0.5, 0.5, 10^-5, 0.0)
scatter(x1, f(x1), 'red'), hold off

