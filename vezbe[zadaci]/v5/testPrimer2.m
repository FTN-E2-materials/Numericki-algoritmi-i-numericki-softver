function y = testPrimer2()
    x = linspace(-1.0, 1.0, 10);
    f =  @ (x) 1.0./(1 + 25*x.^2);
    fX = f(x);
    scatter(x, fX, 'black'), hold on 
    
    p = lagrangeInterp(x, fX)
    
    x = linspace(min(x), max(x), 100);
    pX = polyval(p, x);
    plot(x, pX, 'red', x, f(x), 'black'), hold off 
    
end