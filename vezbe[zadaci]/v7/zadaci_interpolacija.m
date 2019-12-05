function ret = zadaci_interpolacija()
%1)
%%
    x = [0.7854 1.9635 3.1416 4.3197 5.4978];
    fX = [0.7071 0.9239 0 -0.9239 -0.7071];
    %(a) nacrtati poznate tacke
    scatter(x,fX,'green'),hold on
    
    %(b) naci polinom koji zadovoljava poznate tacke i nacrtati ga
    p = lagrangeInterp(x, fX);
    
    x=linspace(min(x),max(x),100);
    plot(x,polyval(p,x),'cyan'),hold off
%2)
%%
    x=[1 2 4];
    fX=[4 5 4];
    %(a) nacrtati poznate tacke
    scatter(x,fX,'green'),hold on
    %(b) naci polinom koji zadovoljava poznate tacke i nacrtati ga
    p = lagrangeInterp(x, fX);
    x=linspace(min(x),max(x),100);
    pX=polyval(p,x);
    plot(x,pX,'cyan')
    
    %(c) naci i nacrtati vrednost funkcije f(x) u tacki x=3
    % uz pomoc naseg polinoma(tj aproksimirane funkcije g) mozemo dobiti i
    % vrednost nase 'f' funkcije u nekoj tacki sto je i bio cilj
    x1=3;
    fX1=polyval(p,x1);
    scatter(x1,fX1,'red'),hold off
 %3)
 %%
    x=[1 4 5];fX=[1 3 4];
    %(a) nacrtati poznate tacke
    scatter(x,fX,'blue'),hold on
    %(b) naci polinom koji zadovoljava poznate tacke i nacrtati ga
    p = lagrangeInterp(x, fX);
    x=linspace(min(x),max(x),100);
    pX=polyval(p,x);
    plot(x,pX,'red')
    
    %(c) naci x1 za koje fazi f(x1) = 2 i nacrtati tu tacku
    fX1=2;
    %nacrtam fX1
    plot([min(x) max(x)],[fX1 fX1],'green')
    f1=@(x) polyval(p,x) - fX1;                 %nadjem gde se seku 
    x1 = zeroFalsePosition(f1, 2.5, 3, 10^-5);   %nadjem nulu preko regula falsi
    scatter(x1,fX1,'black'),hold off
 %4)
 %%
    x=[1 3 5];
    fX=[0 3 0];
    %(a) nacrtati poznate tacke
    scatter(x,fX,'red'),hold on
    %(b) naci polinom koji zadovoljava poznate tacke i nacrtati ga 
    p = lagrangeInterp(x, fX);

    x=linspace(min(x),max(x),100);
    plot(x,polyval(p,x),'blue')
    %(c) nacrtati pravu f(x) = 1
    fX=1;
    plot([min(x) max(x)], [fX fX],'black')
    %(d) naci i nacrtati sve tacke preseka polinoma i prave fX
    z=@(x) polyval(p,x) - fX;
    x1 = zeroFalsePosition(z, 1, 1.5,10^-5);
    scatter(x1,fX,'green')
    x2 = zeroFalsePosition(z, 4.5, 5, 10^-5);
    scatter(x2,fX,'green'),hold off
    
 %5)
 %%
    f = @(x) (x.^2).*sin(x);
    a=-pi;b=pi;
    %(a) nacrtati funkciju f(x) 
    x=linspace(a,b,100);
    plot(x,f(x),'black'),hold on
    
    %(b) odabrati i nacrtati potreban broj tacaka funkcije f(x) za
    %aproksimaciju polinom 3 stepena
    %-> treba nam 4 tacke
    x=linspace(a,b,4);
    scatter(x,f(x),'red')
    %(c) naci polinom koji zadovljava odabrane tacke i nacrtati ga
    p = lagrangeInterp(x, f(x));
    x=linspace(a,b,100);
    pX=polyval(p,x);
    plot(x,pX,'blue'),hold off
    
 %6)
 %%
    % odrediti parametre a0,a1,a2,a3
    x=[0.1 0.3 0.6 1.2];
    fX=[1.023 1.261 2.368 9.064];
    
    p = lagrangeInterp(x, fX);
    
    a=[p(4) p(3) p(2) p(1)]'
    
    
    
    
    
    
end










