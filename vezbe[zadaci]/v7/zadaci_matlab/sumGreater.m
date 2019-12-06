function s = sumGreater(A)
    % nadjem prosecnu vrednost elemenata matrice
    % prosek=mean(mean(A)) ili iterativno dole
   
    
    [v,k]=size(A);
    suma=0;
    for i=1:v
        for j=1:k
            suma=suma+A(i,j);
        end
    end
    prosek=suma/(v*k);

    s=0;
    for i=1:v
        for j=1:k
            if A(i,j) > prosek
                s=s+A(i,j);
            end
        end
    end
        
        
    
    % radim trcanje kroz matricu,i ako je veci od proseka,dodajemo na sumu
    

end