function y = zad1()
    f = @(x) sin(x);
    %a)
    a = pi/3;
    b = 4*pi/3;
    x = linspace(a, b, 100);
    fX = f(x);
    plot(x, fX, 'blue'), hold on
    plot([a b], [0 0], 'black')
    %b)
    zero = zeroBisection(f, a, b, 10^-5, 0.0);
    fZero = f(zero);
    scatter(zero, fZero, 'green'), hold off
    
end