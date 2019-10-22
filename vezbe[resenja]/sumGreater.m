%Napisati funkciju sumaVecih.m za ra?unanje sume onih elemenata matrice
%koji su ve?i od prose?ne vrednosti elemenata matrice. Ulazna matrica je
%proizvoljnih dimenzija. Interfejs funkcije: s = sumGreater(A), gde A
%predstavlja ulaznu matricu, a s predstavlja sumu elemenata ve?ih od
%proseka. Napisati skript datoteku zadatak2.m koja testira funkciju za
%slede?u matricu:

function s = sumGreater(A)
    [row,col] = size(A);
    suma=sum(sum(A));
    br_el = row*col;
    
    prosecnaVrednost = suma/br_el;
    
    s=sum(A(A>prosecnaVrednost));
    
end