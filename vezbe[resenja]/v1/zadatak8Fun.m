%8.Napisati funkciju koja u svakom redu proizvoljne kvadratne matrice A
%zamenjuje elemente na glavnoj i sporednoj dijagonali. Napisati zadatu
%funkciju i skript datoteku zadatak8.m, koja testira funkciju matricom A:

function A = zadatak8Fun(A)
    dim = size(A, 1);               %da bi dobili broj samo
    
    for row = 1:dim
        pomocna = A(row,row);
        A(row,row) = A(row,dim-row+1);
        A(row,dim-row+1) = pomocna;
    end


end