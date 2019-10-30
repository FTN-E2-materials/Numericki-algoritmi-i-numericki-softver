function x = solveUpperTriangular(A, b) 
    rows = size(A, 1);
    x = zeros(rows, 1);
    
    for it = rows:-1:1
        x(it)=(b(it)-A(it,it+1:end)*x(it+1:end))/A(it,it);
    end
    
end