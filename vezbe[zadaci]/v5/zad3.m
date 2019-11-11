function y = zad3()

    %a)
    x = [1 4 5];
    fX = [1 3 3];
    scatter(x, fX, 'black'), hold on
    
    %b)
    p = lagrangeInterp(x, fX);
    x = linspace(min(x), max(x), 100);
    pX = polyval(p, x);
    plot(x, pX, 'red')
    
    %c) Naci x1 za koje važi f(x1) = 2 i nacrtati tu tacku
    
end