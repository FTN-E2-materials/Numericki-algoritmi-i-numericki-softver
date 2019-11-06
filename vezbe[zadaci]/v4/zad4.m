function y = zad4()
    f = @(x) x.^2 - x + 3;
    g = @(x) exp(x);
    %a)
    a = 0;
    b = 2;

    x = linspace(a, b, 100);
    fX = f(x);
    gX = g(x);
    plot(x, fX, 'blue', x, gX, 'red'), hold on
    %b)
    % nula razlike 2 funkcije odredjuje polozaj njihovog preseka
    presek = zeroBisection(@(x) f(x) - g(x), a, b, 10^-5, 0.0)
    fPresek = f(presek);
    scatter(presek, fPresek, 'green'), hold off
end