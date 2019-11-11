function p = lagrangeInterp(x, fX)
    %Red polinoma se izra?unava na slede?i na?in
    order = length(x) - 1;

    p = 0;
    for itFX = 1:order + 1
        lNumer = 1;
        lDenom = 1;
        for itX = 1:itFX - 1
            lNumer = conv(lNumer, [1 -x(itX)]);
            lDenom = lDenom*(x(itFX) - x(itX));
        end
        for itX = itFX + 1:order + 1
            lNumer = conv(lNumer, [1 -x(itX)]);
            lDenom = lDenom*(x(itFX) - x(itX));          
        end
        p = p + lNumer/lDenom*fX(itFX);
    end
end
