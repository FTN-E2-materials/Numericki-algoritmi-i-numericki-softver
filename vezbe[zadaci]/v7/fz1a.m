function s = fz1a(A,n)
%%
    clc
    
    % suma brojeva koji se pojavljuju 3 ili vise puta u matrici A
    s=0;
    [v,k]=size(A);
    brojevi=unique(A);
    B=A;
    
    for b=1:length(brojevi)
       brojac=0;
       for i=1:v
           for j=1:k
                if B(i,j) == brojevi(b)
                    brojac=brojac+1;
                end
           end
       end
       if brojac >= n
          s=s+brojevi(b);
       end
        
    end
    
    
end





