function y = zad4()
    %a)
    x=[1 3 5];
    y=[0 3 0];
    scatter(x,y,'black'),hold on
    
    %b)
    
    p=lagrangeInterp(x,y);
    
    x=linspace(min(x),max(x),100);
    pX=polyval(p,x);
    
    plot(x,pX,'blue');
    
    %c)
    f = @(x) 1;
    plot([min(x) max(x)],[f(min(x)) f(max(x))],'red')
    
    
    %d)   
    fun = @(x) polyval(p,x) - f(x);                     %nadjem z-fun fju koja je presek ove 2
    x1= zeroFalsePosition(fun,min(x),2,10^-5);          %posto je presek pre 2 i posle 4
    x2= zeroFalsePosition(fun,4,max(x),10^-5);          %pa da manje trazi,stavim manji interval
    scatter([x1 x2], [f(x1) f(x2)],'green'),hold off    %iscrtam tacke
    

end