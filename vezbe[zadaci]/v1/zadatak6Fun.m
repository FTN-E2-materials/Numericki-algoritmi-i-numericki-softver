%6. Napisati funkciju koja obr?e redosled elemenata neparnih redova
%matrice. Napisati zadatu funkciju i skript datoteku zadatak6.m, koja
%testira funkciju matricom A:

function A = zadatak6Fun(A)
    [rows, cols] = size(A);
    
    for row = 1:2:rows % row ce dobijati vrednost 1, 3, 5 ...
            for col = 1:cols/2 %idemo do polovine reda
            pomocna = A(row,col);
            A(row,col) = A(row,cols - col +1);
            A(row,cols-col+1)=pomocna;
            end
    end
end