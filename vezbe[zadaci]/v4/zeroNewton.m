function [zero, it] = zeroNewton(f, df, x0, errMax, itMax, plotSpeed, plotA, plotB)
    if df(x0) == 0
        error('df(x0) == 0!')
    end

    if plotSpeed <= 0
        [zero, it] = zeroNewtonWithoutPlot(f, df, x0, errMax, itMax);
        return
    end
    [zero, it] = zeroNewtonWithPlot(f, df, x0, errMax, itMax, plotSpeed, plotA, plotB);
end

function [zero, it] = zeroNewtonWithoutPlot(f, df, x0, errMax, itMax)
    for it = 1:itMax
        zero = x0 - f(x0)/df(x0);

        fZero = f(zero);
        if abs(fZero) < errMax
            return
        end
        x0 = zero;
    end
end

function [zero, it] = zeroNewtonWithPlot(f, df, x0, errMax, itMax, plotSpeed, plotA, plotB)
    close
    x = linspace(plotA, plotB, 100);
    fX = f(x);
    fMin = min(fX);
    fMax = max(fX);
    plot(x, fX, 'blue', [plotA plotB], [0 0], 'black'), hold on

    for it = 1:itMax
   
        zero = x0 - f(x0)/df(x0);
        plot([x0 zero], [f(x0) 0], 'red', zero, 0, 'x red')

        fZero = f(zero);
        plot([zero zero], [fMin, fMax], 'green', zero, fZero, 'o green')
        if abs(fZero) < errMax
            return
        end
        x0 = zero;
        pause(1/plotSpeed)
        
        plot([zero zero], [fMin, fMax], 'red', zero, fZero, 'o red')
    end
end