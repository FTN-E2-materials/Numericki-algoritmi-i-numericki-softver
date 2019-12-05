function ret = zadaci_regresija()
%1)
    x=[0.0000 1.2500 2.5000 3.7500 5.0000];
    fX=[1.7499 0.9830 1.2554 3.0802 2.3664];
    %(a) nacrtati poznate tacke
    scatter(x,fX,'magenta'),hold on
    
    %(b) aproksimirati funkciju polinomom 3. stepena kroz poznate tacke i
    %nacrtati ga
    p = lSquares(x, fX, 3);
    x=linspace(min(x),max(x),100);
    pX=polyval(p,x);
    plot(x,pX,'green'),hold off
    
%2)
    x=[1 2 3 5 6];
    fX=[2 4 4 1 3];
    %(a) nacrtati poznate tacke
    scatter(x,fX,'cyan'),hold on
    %(b) naci polinom koji zadovoljava poznate tacke i nacrtati ga
    p = lSquares(x, fX, 4);
    x=linspace(min(x),max(x),100);
    pX=polyval(p,x);
    plot(x,pX,'black')
    
    %(c) naci i nacrtati vrednost funkcije f(x) u tacki x=4
    x1=4;
    fX1=polyval(p,x1);
    scatter(x1,fX1,'red'),hold off
%3)
    f = @(x) (x.^2).*sin(x);
    a=-pi;b=pi;
    %(a) nacrtati funkciju 
    x=linspace(a,b,100);
    plot(x,f(x),'black'),hold on
    
    %(b) aproksimirati funkciju polinom 3 stepena i nacrtati ga
    p = lSquares(x, f(x), 3);
    
    x=linspace(a,b,100);
    pX=polyval(p,x);
    plot(x,pX,'blue')
    
    %(c) naci sve tacke preseka funkcije i polinoma na intervalo [-0.5,0.5]
    z=@(x) polyval(p,x) - f(x);
    x1 = zeroFalsePosition(z, -0.5,0.5, 10^-5);
    scatter(x1,z(x1),'red'),hold off
    
%4)
    x=[0 1 2 3 4 5];
    fX=[5 3 5 1 3 5];
    %(a) nacrtati poznate tacke
    scatter(x,fX,'black'),hold on
    %(b) naci funkciju koja zadovljava sve tacke i nacrtati je
    p = lSquares(x, fX, 5);
    
    x=linspace(min(x),max(x),100);
    pX=polyval(p,x);
    plot(x,pX,'green')
    %(c) naci i nacrtati min i max funkcije na intervalu [0,5]
    
    % NE MOZE JER JE TREBA IZVOD OD POLINOMA NE OD FUNKCIJE dP=matlabFunction(diff(sym(polyval(p,x))));
    dP=polyder(p);
    z=@(x) polyval(dP,x);                       %ubacim svako x u dP da bih video gde je ustvari nula
    mini= zeroFalsePosition(z, 3, 3.5, 10^-5);
    scatter(mini,polyval(p,mini),'red')
    maxi= zeroFalsePosition(z,4.3,5,10^-5);
    scatter(maxi,polyval(p,maxi),'cyan'),hold off
    
%5)
    f = @(x) (x.^3).*cos(x);
    %(a) aproksimirati funkciju polinomom 5 stepena na intervalu
    %-pi/2,5*pi/9
    a=-pi/2;b=5*pi/9;
    x=linspace(a,b,100);
    %plotovanje funkcije plot(x,f(x),'black'),hold on
    
    p = lSquares(x, f(x), 5);
    pX=polyval(p,x);
    plot(x,pX,'red'),hold on
    
    %(b) naci i nacrtati sve tacke u kojima polinom ima vrednost -0.5
    fX1=-0.5;
    plot([a b] ,[fX1 fX1],'green')
    z= @(x) polyval(p,x) - fX1;
    x1=zeroFalsePosition(z, -1.5, -1.2, 10^-5);
    scatter(x1,fX1,'blue')
    x2=zeroFalsePosition(z, -1.2, -0.6, 10^-5);
    scatter(x2,fX1,'blue')
    x3=zeroFalsePosition(z, 1.5, 2, 10^-5);
    scatter(x3,fX1,'blue')
    
end












