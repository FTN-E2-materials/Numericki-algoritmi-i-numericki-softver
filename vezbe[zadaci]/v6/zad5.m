function povratna = zad5()
    f = @(x) x.^3.*cos(x);
    
    %a)
    x=linspace(-pi/2,5*pi/9);
    p = lSquares(x,f(x),5);
    
    x=linspace(min(x),max(x),100);
    pX=polyval(p,x);
    plot(x,pX,'blue'),hold on
    
    %b)
    fX1 = -0.5;
    fp = @(x) polyval(p, x) - fX1;
    x1 = zeroFalsePosition(fp , min(x), -pi/3, 10^-5)
    x2 = zeroFalsePosition(fp, -pi/3, 0, 10^-5)
    x3 = zeroFalsePosition(fp, 0, max(x), 10^-5)
    scatter([x1 x2 x3], polyval(p, [x1 x2 x3]), 'red'), hold off


    

end