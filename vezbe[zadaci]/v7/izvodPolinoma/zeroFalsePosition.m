function [zero, it] = zeroFalsePosition(f, a, b, errMax)
    if f(a)*f(b) > 0
        error('f(a)*f(b) > 0!')
    end

    [zero, it] = zeroFalsePositionWithoutPlot(f, a, b, errMax);
end

function [zero, it] = zeroFalsePositionWithoutPlot(f, a, b, errMax)
    it = 1;
    while true
        fA = f(a);
        fB = f(b);
        zero = b - fB*(b - a)/(fB - fA);

        fZero = f(zero);
        if abs(fZero) < errMax || abs(fZero) < errMax
            return
        end

        if fA*fZero < 0
            b = zero;
        else
            a = zero;
        end
        it = it + 1;
    end
end