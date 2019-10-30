%7.Data je matrica A dimenzije n x m. Napisati funkciju koja pronalazi
%vektor b dimenzije n ?iji i-ti element (? ? {1..?}) predstavlja indeks
%kolone maksimalnog elementa i-tog reda matrice A. Zabranjeno je koristiti
%ugra?enu MATLAB funkciju max. Napisati zadatu funkciju i skript datoteku
%zadatak7.m, koja testira funkciju matricom A:

function b = zadatak7Fun(A)
    [rows, cols] = size(A);

    b = zeros(rows, 1);
    for row = 1:rows
        maksimalni = A(row,1);
        indeks = 1;
        for col = 1:cols
            if A(row,col) > maksimalni
                maksimalni = A(row,col);
                indeks = col;
            end
        end
        b(row) = indeks;
    end
    
end


