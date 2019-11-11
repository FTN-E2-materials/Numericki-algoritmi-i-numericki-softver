function y = zad1()
    
    %a)
    x = [0.7854    1.9635    3.1416    4.3197    5.4978];
    fX = [0.7071    0.9239    0.0000   -0.9239   -0.7071]; 
    scatter(x, fX), hold on
    
    %b)
    p=lagrangeInterp(x,fX);
    %crtanje
    x = linspace(min(x), max(x), 100); 
    pX = polyval(p, x); 
    plot(x, pX, 'red'), hold off 
    
end