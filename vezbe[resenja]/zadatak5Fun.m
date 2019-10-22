%5. Data je kvadratna matrica A dimenzije n x n. Napisati funkciju koja za
%zadatu matricu vraca vektor b dimenzije 2, ?iji prvi element predstavlja
%indeks reda, a drugi element predstavlja indeks kolone minimalnog elementa
%koji se nalazi na glavnoj ili sporednoj dijagonali matrice A. Napisati
%zadatu funkciju i skript datoteku zadatak5.m, koja testira funkciju
%matricom A

function b = zadatak5Fun(A)
    dim = size(A, 1);
    b=[0,0];
    
    %elementa
    %koji se nalazi na glavnoj ili sporednoj dijagonali
    gd=eye(dim);
    sd=diag(gd);
    maska=gd | sd; %gd unija sd 
    B=maska.*A;
    
    %indeks reda minimalnog elementa
    
    for i=1:dim
        minimalni=B(i);
        indeks=1;
        for j=1:dim
            if B(i,j) ~= 0          %kako bi preskocio ono sto nije glavna tj sporedna dijagonala jer su tamo nule
                if minimalni > B(i,j)
                   minimalni =B(i,j);
                   indeks=i;
                end
            
            end
        end
        b(i)=indeks;
    end
            
    
    
end
