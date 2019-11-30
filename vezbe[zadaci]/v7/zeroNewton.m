function [zero, it] = zeroNewton(f, df, x0, errMax, itMax)
    if df(x0) == 0
        error('df(x0) == 0!')
    end

    [zero, it] = zeroNewtonWithoutPlot(f, df, x0, errMax, itMax);
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