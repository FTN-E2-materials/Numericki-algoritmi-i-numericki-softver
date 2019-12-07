%napraviti NOVI VEKTOR koji ima indekse kolona gdje je prosecna vrednost 
%te kolone veca od prosledjenog broja br

function kolona=zad(A,b)
%%
    clc
    [v,k]=size(A);
    B=A;
    kolona=zeros(1,k);
    % prosecna vrednost kolone
    pr_vr=mean(B)
    B=A(:,pr_vr>b)
    [vr,kol]=size(B);
    kolonaV=ones(1,kol).*-1;
    
    bi=1;
    for i=1:k
        for j=1:v
            if pr_vr(i) > b
                kolonaV(bi)=i;bi=bi+1;break;
            end
        end
    end
    kolona=kolonaV
    
 %   brojac=1;
 %   for i=1:length(pr_vr)
 %       if pr_vr(i) > b
 %          kolonaV(brojac)=i;
 %          brojac=brojac+1;
 %       end
 %   end
 %   kolonaV
    
    
   
    
    
    

end