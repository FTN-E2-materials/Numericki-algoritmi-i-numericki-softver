function b = maxe(A)
%%
    clc
    [v,k] = size(A);
    b=ones(1,v);
    
    % vraca se vektor b ciji prvi element  predstavlja indeks kolone max el 
    % prve vrste matrice A. 
    
    
    for i=1:v
        maximalni=A(i,1);
        for j=1:k
            if maximalni < A(i,j)
                maximalni=A(i,j);
                b(i) = j;
            end
        end
         
    end
    A
    b

end