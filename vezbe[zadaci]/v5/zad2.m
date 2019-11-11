function y = zad2()
    
    %a)crtanje poznatih tacaka
    x = [1 2 4];
    fX = [4 5 4];
    scatter(x, fX, 'black'), hold on
    
    %b)
    p=lagrangeInterp(x,fX);
    x = linspace(min(x), max(x), 100); 
    pX = polyval(p, x); 
    plot(x, pX, 'red')
    
    %c)Naci i nacrtati vrednost funkcije f(x) u tacki x = 3. 
    x1 = 3;
    fX1 = polyval(p, x1);
    scatter(x1, fX1, 'blue'), hold off
    
end