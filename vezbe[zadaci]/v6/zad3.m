function povratna = zad3()

    f = @(x) x.^2 .*sin(x);
    a=-pi;
    b=pi;
    %a)
    x=linspace(a,b,100);
    plot(x,f(x),'black'),hold on
    
    %b)
    x=linspace(a,b,4);
    p=lSquares(x,f(x),3);
    
    x=linspace(a,b,100);
    pX=polyval(p,x);
    plot(x,pX,'magenta')
    
    %c)
    fun = @(x) f(x) - polyval(p,x);
    x1=zeroFalsePosition(fun,-1/2,1/2,10^-5);
    x1=round(x1,2)
    scatter(x1,f(x1),'green'),hold off
    
    

end