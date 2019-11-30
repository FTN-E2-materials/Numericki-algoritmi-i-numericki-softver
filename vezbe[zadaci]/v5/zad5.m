function y = zad5()
    %a)
    x=linspace(-pi,pi,100);
    f = @(x) x.^2 .* sin(x);
    plot(x,f(x),'black'),hold on
    
    %b)
    xp = linspace(-pi,pi,4);      %treci parametar mora 4,jer zelimo 4 tacke
    scatter(xp,f(xp),'red');      %jer aproksimiramo polinom 3 stepena 
    
    %c)
    
    p=lagrangeInterp(xp,f(xp))
    pX=polyval(p,x);
    plot(x,pX,'blue'),hold off
    
end