function b = nadji3(A)
%% 
    clc
    [v,k]=size(A);
    A
    % napisati fju koja pronalazi vektor b dimenzije 3
    % ciji prvi element predstavlja indeks reda minimalnog elementa prve
    % kolone matrice A
    b=ones(size(A(1,:)));
    
    %trebamo naci INDEKS REDA minimalnog elementa prve kolone
    
    
    for i=1:k
        minimalni=A(1,i);
        for j=1:v
            if minimalni > A(j,i)
                minimalni=A(j,i);
                b(i) = j;
            end
        end
        
    end
    minimalni
    b
    
end