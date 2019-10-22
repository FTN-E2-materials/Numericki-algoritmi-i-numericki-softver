%4. Napisati funkciju koja prima kvadratnu matricu A veli?ine n x n i vra?a
%vektor b dužine n ?iji i-ti element predstavlja zbir elemenata i-tog reda
%matrice A koji se nalaze van sporedne dijagonale matrice A. Napisati
%zadatu funkciju i skript datoteku zadatak4.m, koja testira funkciju
%matricom A:
function b = zadatak4Fun(A)
    [rows,cols]=size(A);
    b=zeros(1,cols);
    
    %preko fja
    %B=fliplr(A);
    %B=B.*(~eye(cols));
    %b=sum(B,2);
    %b=b';
    
    for i= 1: rows
       suma=0;
       for j= 1: cols
            if j ~= rows - i +1
                suma=suma+A(i,j);
            end
       end
       b(i)=suma;
    end
    

end