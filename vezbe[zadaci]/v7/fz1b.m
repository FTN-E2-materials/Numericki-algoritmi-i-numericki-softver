function B = fz1b(A)
%%
    clc
    [v,k]=size(A);
    B=A;
    
    % uzmemo vektor centralne kolone
    % uzmemo vektor sporedne dijagonale
    % i zamenimo ih
    vektorCK=ones(1,v);
    vektorSD=ones(1,v);
    for i=1:v
        for j=1:k
            if i==k-j+1
               vektorSD(i)=B(i,j);
            end
            if j==round(k/2)
                vektorCK(i)=B(i,j);
            end
        end
    end
    
    
    for i=1:v
        for j=1:k
            if i==k-j+1
                B(i,j)=vektorCK(i);
            end
            if j==round(k/2)
                B(i,j)=vektorSD(i);
            end
        end
    end
    A

    B

end