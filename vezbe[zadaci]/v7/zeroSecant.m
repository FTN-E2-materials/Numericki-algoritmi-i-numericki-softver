function [zero, it] = zeroSecant(f, a, b, errMax, itMax)
    if f(a) == f(b)
        error('f(a) == f(b)!')
    end

    [zero, it] = zeroSecantWithoutPlot(f, a, b, errMax, itMax);
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