function ret = zadaci_nelinearne()
%1)
    f = @(x) sin(x);
    a=pi/3;
    b=4*pi/3;
    %(a)
    x=linspace(a,b,100);
    y=linspace(0,0,length(x));
    %crtanje x-ose
    plot(x,y,'black'),hold on
    %crtanje fje 
    plot(x,f(x),'green')
    %(b)
    
    [zero, it] = zeroFalsePosition(f, a, b, 10^-5);
    scatter(zero,f(zero),'red'),hold off
%2)
%%
    f = @(x) cos(x);
    a=pi/3;b=4*pi/3;
    %(a)
    %crtanje x-ose na laksi nacin
    plot([a b],[0 0],'cyan'),hold on
    %crtanje funkcije
    x=linspace(a,b,100);
    plot(x,f(x),'red')
    %(b)
    df=matlabFunction(diff(sym(f)));
    [zero, it] = zeroNewton(f, df, 1.5, 10^-5, 100);
    scatter(zero,f(zero),'green'),hold off
    
    
%3)
%%
    f = @(x) sin(2.*x);
    a=pi/4;b=7*pi/4;
    %(a)
    %crtanje x-ose
    plot([a b],[0 0],'cyan'),hold on
    %crtanje funkcije
    x=linspace(a,b,100);
    plot(x,f(x),'red')
    %(b)
    [zero1, it] = zeroFalsePosition(f, 1.4, 1.9, 10^-5);
    scatter(zero1,f(zero1),'green')
    [zero2, it] = zeroFalsePosition(f,2.5 ,3.5 ,10^-5);
    scatter(zero2,f(zero2),'green')
    [zero3, it] = zeroFalsePosition(f,4.5 ,5.5 ,10^-5);
    scatter(zero3,f(zero3),'green'),hold off

%4)
%%
    f = @(x) x.^2 - x + 3; g=@(x) exp(x);
    a=0;b=2;
    %(a) crtanje grafika obe fje
    x=linspace(a,b,100);
    plot(x,f(x),'cyan'),hold on
    plot(x,g(x),'magenta')
    
    %(b) naci presek proizvoljnom metodom i nacrtati
    z=@(x) f(x) - g(x);
    zero=zeroFalsePosition(z,a,b,10^-5);
    scatter(zero,g(zero),'green'),hold off
    
 %5)
 %%
    f = @(x) x.^2 - 2; g = @(x) -x.^2+2;
    a=-2;b=2;
    %(a) crtanje grafike obe funkcije na istom intervalu
    x=linspace(a,b,100);
    plot(x,f(x),'cyan',x,g(x),'magenta'),hold on
    %(b) nacrtati sve preseke fja u istom intervalu
    z = @(x) f(x) - g(x);
    zero=zeroFalsePosition(z,-1.5,-1.1,10^-5)
    scatter(zero,f(zero),'green')
    zero2=zeroFalsePosition(z,1.2,1.6,10^-5)
    scatter(zero2,f(zero2),'green'),hold off
 %6)
 %%
    f=@(x) sin(2.*x) - x;
    a=0;b=2*pi;
    %(a) nacrtati grafik funkcije 
    x=linspace(a,b,100);
    plot(x,f(x),'red'),hold on
    
    %(b) naci min i max funkcije
    df=matlabFunction(diff(sym(f)));
    max = zeroFalsePosition(df,0,1.1,10.^-5);
    scatter(max,f(max),'green')
 
    min = zeroFalsePosition(df,5,6,10.^-5);
    scatter(min,f(min),'green'),hold off
    
    
end












