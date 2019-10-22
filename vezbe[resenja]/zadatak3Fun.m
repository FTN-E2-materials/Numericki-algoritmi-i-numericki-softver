%Data je matrica A dimenzije n x m. Napisati funkciju koja pronalazi vektor
%b dimenzije m ?iji i-ti element (? ? {1..?}) predstavlja indeks reda
%minimalnog elementa i-te kolone matrice A. Zabranjeno je koristiti
%ugra?enu MATLAB funkciju min. Napisati zadatu funkciju i skript datoteku
%zadatak3.m, koja testira funkciju matricom A:

function b = zadatak3Fun(A)
    [rows,cols] = size(A);
    
    b= zeros(1,cols);
    
    %naci minimalni element i uzeti mu indeks
    
    for i=1:cols
       minimalni=A(1,i);
       indeks=1;
       for j=1:rows
           if minimalni > A(j,i)
                minimalni = A(j,i);
                indeks=j;
           end
       
       end
       b(i)=indeks;
    end
    
end