function y = zad6()

    f = @(x) sin(2*x) - x;
    
    %a)
    a = 0;
    b = 2*pi;

    x = linspace(a, b, 100);
    fX = f(x);
    plot(x, fX, 'blue'), hold on
    
    %b)
    % nule izvoda funkcije su ekstremi
    %df = matlabFunction(diff(sym(f)))
    df = @(x) 2*cos(2*x) - 1;
    % funkcija u intervalu ima 2 min. i 2 max.
    % naci globalni min. i globalni max. u intervalu
    max = zeroBisection(df, 0, pi/2, 10^-5, 0.0)
    fMax = f(max);
    scatter(max, fMax, 'green')
    
    min = zeroBisection(df, 3*pi/2, 2*pi, 10^-5, 0.0)
    fMin = f(min);
    scatter(min, fMin, 'green'), hold off
    
    
end