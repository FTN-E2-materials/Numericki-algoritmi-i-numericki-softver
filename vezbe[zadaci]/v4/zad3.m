function y = zad3()

    f = @(x) sin(2*x);
    %a)
    a = pi/4;
    b = 7*pi/4;

    x = linspace(a, b, 100);
    fX = f(x);
    plot(x, fX, 'blue'), hold on
    plot([a b], [0 0], 'black')
    %b)
    %sa grafika utvrdimo pozicije sve 3 nule i naci ih pojedinacno
    zero = zeroBisection(f, pi/4, 3*pi/4, 10^-5, 0.0)
    fZero = f(zero);
    scatter(zero, fZero, 'green')
    
    zero = zeroBisection(f, 3*pi/4, 5*pi/4, 10^-5, 0.0)
    fZero = f(zero);
    scatter(zero, fZero, 'green')
    
    zero = zeroBisection(f, 5*pi/4, 7*pi/4, 10^-5, 0.0)
    fZero = f(zero);
    scatter(zero, fZero, 'green'), hold off
end