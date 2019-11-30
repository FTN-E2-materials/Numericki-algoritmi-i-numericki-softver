function [zero, it] = zeroBisection(f, a, b, errMax)
    if f(a)*f(b) > 0
        error('f(a)*f(b) > 0!')
    end

    [zero, it] = zeroBisectionWithoutPlot(f, a, b, errMax);
end

function [zero, it] = zeroBisectionWithoutPlot(f, a, b, errMax)
    it = 1;
    while true
        zero = (a + b)/2;

        fZero = f(zero);
        if abs(fZero) < errMax || abs(b - a) < errMax
            return
        end

        if f(a)*fZero < 0
            b = zero;
        else
            a = zero;
        end
        it = it + 1;
    end
end