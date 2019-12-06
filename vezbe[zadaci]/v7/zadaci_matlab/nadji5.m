function b = nadji5(A)
%% 
    clc
    [v,k]=size(A);
    b=ones(1,2);
    
    % prvi element predstavlja indeks reda a drugi el. predstavlja indeks
    % kolone minimalnog elementa koji se nalazi na glavnoj ili sporednoj
    % dijagonali matrice A
    
    B=A;
    
    minimalni=B(1,1);
    for i=1:v
        for j=1:k
            
            if i == j % provera za glavnu dijagonalu
               if minimalni > B(i,j)
                   minimalni=B(i,j);
                    b(1) = i;
                    b(2) = j;
               end
            end
            if i == k - j + 1  % provera za sporednu dijagonalu
                if minimalni > B(i,j)
                    minimalni = B(i,j);
                     b(1) = i;
                     b(2) = j;
                end
            end
           
            
            
        end
    end
    B
    b
    
    
end