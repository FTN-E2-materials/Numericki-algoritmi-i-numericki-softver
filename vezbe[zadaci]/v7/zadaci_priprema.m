function ret = zadaci_priprema()

%1)
    %(a)
    A=[6 2 5 3
       3 5 9 7
       2 7 2 7
       9 2 5 9];
   n=3;
   fz1a(A,n);
 
   %(b)
   A=[1 4 2
      3 5 6
      7 8 9];
   fz1b(A);
   
%% 2)
    clc
    x=[1 3 4 2];
    y=[2 3 3 1];
    A=[ x(1),-x(1).*y(1),+x(1).^3,-4.*y(1)
        x(2),-x(2).*y(2),+x(2).^3,-4.*y(2)
        x(3),-x(3).*y(3),+x(3).^3,-4.*y(3)
        x(4),-x(4).*y(4),+x(4).^3,-4.*y(4)];
    
    b=[11.5; 7.8; 9.9; 5];
    vektor = gauss_PP(A, b);
    a=vektor(1);b=vektor(2); c=vektor(3); d=vektor(4);
    
    
 %% 3)
    clc
    f=@(x) x.*cos(2.*x)-2;
    
    a=-3.*pi/2; b=3*pi/4;
    %(a) nacrtati funkciju i x-osu
    plot([a b],[0 0],'black'),hold on
    x=linspace(a,b,100);
    plot(x,f(x),'b')
    %(b) otvorenom metodom naci nulu funkcije i nacrtati je
    
    df=matlabFunction(diff(sym(f)));
    x0=-4;
    nula = zeroNewton(f, df, x0, 10^-5, 100);
    scatter(nula,f(nula),'red')
    
    %(c) otvorenom metodom naci min i maksimum i nacrtati ih
    
    mini = zeroSecant(df, -4, -3, 10^-5, 100);
    scatter(mini,f(mini),'green')
    maxi = zeroSecant(df,-5,-4,10^-5,100);
    scatter(maxi,f(maxi),'green')
    
    %(d) pronaci sve preseke funkcije f(x) sa funkcijom g(x) ,nacrtati g(x)
    %i presecne tacke
    
    g=@(x) -exp(x).*sin(x) - 2;
    x=linspace(a,b,100);
    plot(x,g(x),'green')
    
    z=@(x) f(x) - g(x);
    x=linspace(a,b,100);
    x1 = zeroFalsePosition(z,-4.5, -3, 10^-5)
    scatter(x1,f(x1),'black')
    x2 = zeroFalsePosition(z,-3,-2, 10^-5)
    scatter(x2,f(x2),'black')
    x3 = zeroFalsePosition(z,-1.5, -0.5, 10^-5)
    scatter(x3,f(x3),'black')
    x4 = zeroFalsePosition(z,-0.5, 0.5, 10^-5)
    scatter(x4,f(x4),'black'),hold off
    
%%
%4)
    clc
    f=@(x) (exp(x)/2).*cos((x.^2)/3);
    
    x=linspace(1,6,100);
    plot(x,f(x),'black'),hold on
    
    %(a) pronaci polinom 7. stepena koji aproksimira datu funkciju,nacrtati
    %fju i dobijeni polinom
    x=linspace(1,6,8);
    p = lSquares(x, f(x), 7);
    x=linspace(1,6,100);
    pX=polyval(p,x);
    plot(x,pX,'red')
    
    %(b) pronaci sve tacke u kojoj polinom ima vrednost 35 na intervalu
    %[4.5,6] i prikazati ih
    fX1=35;
    plot([1,6], [fX1 fX1],'black')
    
    z= @(x) polyval(p,x) - fX1;
    
    x1 = zeroFalsePosition(z, 4.5, 4.8, 10^-5)
    scatter(x1,polyval(p,x1),'green');
    
    x2 = zeroFalsePosition(z, 5.5,6, 10^-5)
    scatter(x2,polyval(p,x2),'green');
    
    %(c) na intervalu [4.5,5.5] pronaci sve presecne tacke aproksimacionog
    %polinoma i date funkcije,i prikazati ih 
    
    o = @(x) polyval(p,x) - f(x);
    x1 = zeroFalsePosition(o,4.5,4.8, 10^-5)
    scatter(x1,f(x1),'blue')
    
    x2 = zeroFalsePosition(o,5.2,5.5, 10^-5)
    scatter(x2,f(x2),'blue')
    
end








    





    
    
    
    
    