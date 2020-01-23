clc
clear all

f = @(x) x.^3.*cos(x);
a = -pi/2;
b = 5*pi/9;

x = linspace(a, b, 6);
fX = f(x);
p = lSquares(x, fX, 5);

x = linspace(min(x), max(x), 100);
pX = polyval(p, x);
plot(x, pX, 'red'), hold on

fp = @(x) polyval(p, x) + 0.5;
x1 = zeroFalsePosition(fp, -2, -1.25, 10^-5, 0.0)
x2 = zeroFalsePosition(fp, -1.25, -0.5, 10^-5, 0.0)
x3 = zeroFalsePosition(fp, 1, 2, 10^-5, 0.0)
plot([a b], [-0.5 -0.5], 'black')
scatter([x1 x2 x3], polyval(p, [x1 x2 x3]), 'red'), hold off