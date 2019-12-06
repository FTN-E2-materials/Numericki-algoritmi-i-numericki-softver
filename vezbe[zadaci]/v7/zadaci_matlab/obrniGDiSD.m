function B = obrniGDiSD(A)
%%
    clc
    [v,k]=size(A);
    B=A;
    
    vektorGD=ones(1,v);
    vektorSD=ones(1,v);
    for i=1:v
        for j=1:k
            if i == j           % uzmem glavnu dijagonalu
               vektorGD(i)=A(i,j); 
            end
            if i == k - j+1     % uzmem sporednu dijagonalu
               vektorSD(i)=A(i,j); 
            end
        end
    end
    
    % zamenu elemenata
    for i=1:v
        for j=1:k
            if i == j           % ako sam na glavnoj dijagonal
               A(i,j) = vektorSD(i);
            end
            if i == k - j+1     % ako sam na  sporednoj dijagonali
               A(i,j) = vektorGD(i);
            end
        end
    end
    
    A
    B
end