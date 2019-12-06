function b = nadji4(A)
%%  
    clc
    [v,k]=size(A);
    b=ones(1,v);
    % vraca vektor b ciji prvi element predstavlja zbir elemenata prve vrste
    % matrice A koji se nalaze van sporedne dijagonale matrice A
    B=A;
    for i=1:v
        for j=1:k
            if i==k-j+1
                B(i,j)=0;
            end
        end
    end
    
    s=0;
    for i=1:v
        for j=1:k
            s=s+B(i,j);
            b(i)=s;
        end
        s=0;
    end
    B
    b
    
    
    

end