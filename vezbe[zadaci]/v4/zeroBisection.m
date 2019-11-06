function [zero, it] = zeroBisection(f, a, b, errMax, plotSpeed)
    if f(a)*f(b) > 0
        error('f(a)*f(b) > 0!')
    end

    if plotSpeed <= 0
        [zero, it] = zeroBisectionWithoutPlot(f, a, b, errMax);
        return
    end
    [zero, it] = zeroBisectionWithPlot(f, a, b, errMax, plotSpeed);
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

function [zero, it] = zeroBisectionWithPlot(f, a, b, errMax, plotSpeed)
    close
    
    x = linspace(a, b, 100);
    fX = f(x);
    fMin = min(fX);
    fMax = max(fX);
    plot(x, fX, 'blue', [a b], [0 0], 'black'), hold on
    plot([a a], [fMin fMax], 'red', [b b], [fMin fMax], 'red')

    it = 1;
    while true
        zero = (a + b)/2;

        fZero = f(zero);
        plot([zero zero], [fMin fMax], 'green', zero, fZero, 'o green')
        if abs(fZero) < errMax || abs(b - a) < errMax
            return
        end
        pause(1/plotSpeed)

        if f(a)*fZero < 0
            b = zero;
        else
            a = zero;
        end
        it = it + 1;

        plot([zero zero], [fMin fMax], 'red', zero, fZero, 'o red')
    end
end