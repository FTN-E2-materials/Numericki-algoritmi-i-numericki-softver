function [s,ss, err] = sumD(A)
%%    
    
    [v,k]=size(A);
    if(v~=k)
       err=1;
       return;
    end
    s=0;
    for i=1:v
        for j=1:k
            if i==j         %provera da li smo na glavnoj dijagonali
               s=s+A(i,j);
            end
        end
        
    end
    err=0;
 %% suma po sporednoj
    
    ss=0;           %suma na sporednoj dijagonali
    for i=1:v
        for j=1:k
            if i == k-j+1
                A(i,j)
            end
        end
    end
    
end








