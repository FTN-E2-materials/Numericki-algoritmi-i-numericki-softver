function x = gauss(A, b)
    [A, b] = upperTriangular(A, b);
    x = solveUpperTriangular(A, b);
end