%9. Napisati funkciju koja obr?e redosled elemenata neparnih kolona
%matrice. Napisati zadatu funkciju i skript datoteku zadatak9.m, koja
%testira funkciju matricom A:
function A = zadatak9Fun(A)
    [rows, cols] = size(A);
  
    for col = 1:2:cols
        for row = 1:rows/2
            pomocna = A(row,col);
            A(row,col) = A(rows-row+1, col);
            A(rows-row+1, col) = pomocna;
        end
    end 
end