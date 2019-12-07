function y = zadatak_izvodPolinoma()
%%
    clc
    %(a)  
    x=[0 1 2 3 4 5];
    fX=[5 3 5 1 3 5];
    %(a) nacrtati poznate tacke
    scatter(x,fX,'black'),hold on
    %(b) naci funkciju koja zadovljava sve tacke i nacrtati je
    p = lSquares(x, fX, 5)
    
    x=linspace(min(x),max(x),100);
    pX=polyval(p,x);
    plot(x,pX,'blue')
    
    %(c) naci i nacrtati min i max funkcije na intervalu [0,5]
    
    
    dP=polyder(p)
    z=@(x)polyval(dP,x)
    
    mine=zeroFalsePosition(z,3,3.5,10^-5);
    scatter(mine,polyval(p,mine),'red')
   
    
    
    
    
    
    
end