function y = zad5()
    f = @(x) x.^2 - 2;
    g = @(x) -x.^2 + 2;
    %a)
    a = -2;
    b = 2;

    x = linspace(a, b, 100);
    fX = f(x);
    gX = g(x);
    plot(x, fX, 'blue', x, gX, 'red'), hold on
    %b)
    % sa grafika utvrditi pozicije oba preseka i naci ih pojedinacno
    presek = zeroBisection(@(x) f(x) - g(x), -2, 0, 10^-5, 0.0)
    fPresek = f(presek);
    scatter(presek, fPresek, 'green')
    
    presek = zeroBisection(@(x) f(x) - g(x), 0, 2, 10^-5, 0.0)
    fPresek = f(presek);
    scatter(presek, fPresek, 'green'), hold off
end