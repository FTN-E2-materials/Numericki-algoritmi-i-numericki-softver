function povratna = zad2()
    
    %a)
    x=[1 2 3 5 6];
    fX=[2 4 4 1 3];
    scatter(x,fX,'black'),hold on
    
    %b)
    p=lSquares(x,fX,4);
    
    x=linspace(min(x),max(x),100);
    pX=polyval(p,x);
    plot(x,pX,'blue');
    
    %c)
    x1=4;
    pX1=polyval(p,x1)
    scatter(x1,pX1,'green'),hold off
    

end