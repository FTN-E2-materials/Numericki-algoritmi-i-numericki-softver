function povratna = zad1()
    
    %a)
    x=[0 1.25 2.5 3.75 5];
    fX=[1.7499 0.9830 1.2554 3.0802 2.3664];
    scatter(x,fX,'black'),hold on
    
    %b)
    p=lSquares(x,fX,3)

    x=linspace(min(x),max(x),100);
    pX=polyval(p,x);
    plot(x,pX,'green'),hold off
end