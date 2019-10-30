function x = gauss_PP(A, b)
    [A, b] = upperTriangular_PP(A, b);
    x = solveUpperTriangular(A, b);
end 