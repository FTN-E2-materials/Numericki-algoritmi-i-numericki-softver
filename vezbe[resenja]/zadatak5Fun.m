%5. Data je kvadratna matrica A dimenzije n x n. Napisati funkciju koja za
%zadatu matricu vraca vektor b dimenzije 2, ?iji prvi element predstavlja
%indeks reda, a drugi element predstavlja indeks kolone minimalnog elementa
%koji se nalazi na glavnoj ili sporednoj dijagonali matrice A. Napisati
%zadatu funkciju i skript datoteku zadatak5.m, koja testira funkciju
%matricom A

function b = zadatak5Fun(A)
    dim = size(A, 1);
      
    minimalni = Inf;
    b = [0, 0]; 
    for row = 1:dim
        for col = 1:dim
            if row == col % element se nalazi na glavnoj dijagonali
                if A(row,col) < minimalni
                    minimalni = A(row,col);
                    b = [row, col];
                end
            end
            if col == dim - row + 1 % element se nalazi na sporednoj dijagonali
                if A(row,col) < minimalni
                    minimalni = A(row,col);
                    b = [row, col];
                end
            end
        end
    end
            
    
    
end
