function povratna = zad4()
    x =[0 1 2 3 4 5];
    fX=[5 3 5 1 3 5];
    
    %a)
    scatter(x,fX,'black'),hold on
    
    %b)
    p=lSquares(x,fX,5);
    
    x=linspace(min(x),max(x),100);
    pX=polyval(p,x);
    plot(x,pX,'blue')
    
    %c) ekstrem dobijamo preko izvoda
    dp=polyder(p);
    
    minF = zeroFalsePosition(@(x) polyval(dp,x),3,4,10^-5)
    pMin=polyval(p,minF);
    scatter(minF,pMin,'green')
    
    maxF = zeroFalsePosition(@(x) polyval(dp,x),4,5,10^-5)
    pMax=polyval(p,maxF);
    scatter(maxF,pMax,'green')
    hold off

end