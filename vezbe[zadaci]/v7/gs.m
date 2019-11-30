function [x, it] = gs(A, b, x0, itMax, errMax)
    [rows, cols] = size(A);
    if(rows ~= cols)
        error('Matrix A must be square!')
    end

    x = x0;
    for it = 1:itMax
        for row = 1:rows
            x(row) = 1/A(row,row)*(b(row) - A(row,1:row - 1)*x(1:row - 1) - A(row,row + 1:end)*x0(row + 1:end));
        end
        if abs(x - x0) < errMax
            return
        end
        x0 = x;
    end
end
        
        
        
        
        
        
        
        
            
            
            
            
            
            
            
            