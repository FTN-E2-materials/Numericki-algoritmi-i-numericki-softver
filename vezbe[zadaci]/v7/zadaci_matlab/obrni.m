function B = obrni(A)
%%
    clc
    % obrnuti redosled elemenata neparnih redova matrice
    [v,k] = size(A);
    B=A;
    
    for i=1:2:v
        for j=1:k
            if j < round(k/2)
                temp = B(i,j);
                B(i,j)=B(i,k-j+1);
                B(i,k-j+1)=temp;
            end
        end
    end
    
    A
    B
end