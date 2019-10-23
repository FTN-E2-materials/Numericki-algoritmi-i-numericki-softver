%10. Neka su ta?ke 2D euklidskog prostora definisane kao matrica u kojoj je
%prva kolona ? komponenta a druga kolona ? komponenta. Napisati funkciju
%dijametar.m koja za opisanu matricu odre?uje udaljenost izme?u para
%najudaljenijih ta?aka. Interfejs funkcije: d = diameter(points), gde
%points predstavlja ulaznu matricu, a d predstavlja izra?unatu najve?u
%udaljenost ta?aka. a. Napisati skript datoteku zadatak3.m koja testira
%funkciju za slede?u matricu: points = [     1.0 0.0     4.0 8.0     2.1
%1.2     3.2 1.9     5.6 4.3     7.9 2.3     -1.0 3.1];   diameter(points)

%b. Nacrtati poloaj ta?aka.

function d = diameter(points)
    d = 0;

    pointCount = size(points, 1);
    for it1 = 1:pointCount - 1      
        for it2 = it1 + 1:pointCount
            tacka1 = points(it1, :);        %uzme poziciju tacke 1
            tacka2 = points(it2, :) ;        
            udaljenost = norm(tacka2 - tacka1);
            if udaljenost > d
                d = udaljenost
            end
        end       
    end
end