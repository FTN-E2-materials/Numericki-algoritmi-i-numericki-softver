function ret = zadaci_primer()

%3)
    x=[0.1 0.3 0.6 1.2];
    fX=[1.023 1.261 2.368 9.064];
    scatter(x,fX,'black'),hold on
    
    p = lagrangeInterp(x, fX);
    a=[ p(4) p(3) p(2) p(1)]';
    hold off
%4)
    %(a) 
    P = @(x) x.*sin(x);
    F = @(x) 2+ (x.^2).*cos(x);
    a=1;b=3;
    x=linspace(a,b,100);
    plot(x,P(x),'red',x,F(x),'black'),hold on
    z0=[1.6];
    z=@(x) P(x) - F(x);
    dz=matlabFunction(diff(sym(z)));
    zero = zeroNewton(z, dz, z0, 10^-5, 100);
    scatter(zero,F(zero),'green'),hold off
    %(b)
    g = @(x) x.*sin(x);
    a=-15;b=-5;
    x=linspace(a,b,100);
    %plot(x,g(x),'m'),hold on
    
    x=linspace(a,b,6);
    
    p=lagrangeInterp(x,g(x));
    scatter(x,g(x),'green'),hold on
    
    x=linspace(a,b,100);
    pX=polyval(p,x);
    plot(x,pX,'c')
    %(c)
    polyval(p,-5.2);
    polyval(p,-7.3);
    polyval(p,-6.1);
    polyval(p,-9.5);
    %(d)
    fX1=-6;
    plot([a b],[fX1 fX1],'black')
    z = @(x) polyval(p,x) - fX1;
    zero = zeroFalsePosition(z, -11, -9, 10^-5);
    scatter(zero,fX1,'red'),hold off
    
    %(e)
    g = @(x) x.*sin(x);
    a=-20;b=0;
    x=linspace(a,b,100);
    %plot(x,g(x),'m'),hold on
    
    x=linspace(a,b,6);
    
    p=lagrangeInterp(x,g(x));
    scatter(x,g(x),'green'),hold on
    x=linspace(a,b,100);
    pX=polyval(p,x);
    plot(x,pX,'c')
    fX1=-6;
    plot([a b],[fX1 fX1],'black')
    z = @(x) polyval(p,x) - fX1;
    zero = zeroFalsePosition(z, -18, -14, 10^-5);
    scatter(zero,fX1,'red')
    zero2 = zeroFalsePosition(z, -14, -11, 10^-5);
    scatter(zero2,fX1,'red')
    zero3 = zeroFalsePosition(z, -11, -3, 10^-5);
    scatter(zero3,fX1,'red')
    zero4 = zeroFalsePosition(z, -3, 0, 10^-5);
    scatter(zero4,fX1,'red')
    
    

end




