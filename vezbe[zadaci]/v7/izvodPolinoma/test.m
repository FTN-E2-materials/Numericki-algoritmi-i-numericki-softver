function y = test()
%%
        clc
        
        x=[0 1.25 2.5 3.75 5];
        fX=[1.7499 0.9830 1.2554 3.0802 2.3664];
        
        scatter(x,fX,'black'),hold on
        % p=lSquares(x,fX,3)
        
       % x=[0 1.25 2.5 3.75];
       % fX=[1.7499 0.9830 1.2554 3.0802];
        p = lSquares(x, fX, 3)
        x=linspace(min(x),max(x),100);
        pX=polyval(p,x);
        plot(x,pX,'green'),hold off
 %%
    clc
    x=[1 2 3 5 6]; fX=[2 4 4 1 3];
    scatter(x,fX,'black'),hold on
    
    p = lSquares(x, fX, 4);
    x=linspace(min(x),max(x),100);
    pX=polyval(p,x);
    plot(x,pX,'blue')

    clc
    
    fX1=polyval(p,4)
    scatter(4,fX1,'red')
    
    


end












