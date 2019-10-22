function [s, err] = sumD(A)
%Napisati funkciju sumD.m za ra?unanje sume elemenata glavne dijagonale
%kvadratne matrice proizvoljnih dimenzija.Interfejs funkcije: [s, err] =
%sumD(A), gde A predstavlja ulaznu matricu, s predstavlja sumu elemenata
%glavne dijagonale, a err predstavlja indikator greške (ukoliko ulazna
%matrica nije kvadratna, err = 1). Napisati skript datoteku zadatak1.m koja
%testira funkciju za slede?u matricu:

    [row,col]=size(A);
    if row ~= col 
        err=1;
        s=NaN;
        return;
    end
    
    %s=sum(diag(A));
    
    % iterativno:
    s = 0;
    for it = 1:row
        s = s + A(it, it);
    end
    
    
    
    
end