function [zero, it] = zeroSecant(f, a, b, errMax, itMax, plotSpeed, plotA, plotB)
    if f(a) == f(b)
        error('f(a) == f(b)!')
    end

    if plotSpeed <= 0
        [zero, it] = zeroSecantWithoutPlot(f, a, b, errMax, itMax);
        return
    end
    [zero, it] = zeroSecantWithPlot(f, a, b, errMax, itMax, plotSpeed, plotA, plotB);
end

function [zero, it] = zeroSecantWithoutPlot(f, a, b, errMax, itMax)
    for it = 1:itMax
        fA = f(a);
        fB = f(b);
        zero = b - fB*(b - a)/(fB - fA);

        fZero = f(zero);
        if abs(fZero) < errMax
            return
        end

        a = b;
        b = zero;
    end
end

function [zero, it] = zeroSecantWithPlot(f, a, b, errMax, itMax, plotSpeed, plotA, plotB)
    close
 
    x = linspace(plotA, plotB, 100);
    fX = f(x);
    fMin = min(fX);
    fMax = max(fX);
    plot(x, fX, 'blue', [plotA plotB], [0 0], 'black'), hold on

    for it = 1:itMax
        fA = f(a);
        fB = f(b);
        zero = b - fB*(b - a)/(fB - fA);
        plot([a b], [fA fB], 'red', zero, 0, 'x red')

        fZero = f(zero);
        plot([zero zero], [fMin, fMax], 'green', zero, fZero, 'o green')
        if abs(fZero) < errMax
            return
        end
        pause(1/plotSpeed)

        a = b;
        b = zero;
        
        plot([zero zero], [fMin, fMax], 'red', zero, fZero, 'o red')
    end
end