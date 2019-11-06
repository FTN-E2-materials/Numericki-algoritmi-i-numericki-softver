function y = zad2()
    f = @(x) cos(x);
    %a)
    a = pi/3;
    b = 4*pi/3;

    x = linspace(a, b, 100);
    fX = f(x);
    plot(x, fX, 'blue'), hold on
    plot([a b], [0 0], 'black')
    
    %[zero, it] = zeroSecant(f, a, b, 10^-5, 100, 0.0);
    %nula van intervala -> naspram pozicije nule na grafiku
    %suziti interval
    [zero, it] = zeroSecant(f, pi/3, pi, 10^-5, 100, 0.0)
    
    %b)
    df = @(x) -sin(x);
    %[zero, it] = zeroNewton(f, df, pi/3, 10^-5, 100, 0.0)
    
    fZero = f(zero);
    scatter(zero, fZero, 'green'), hold off
end