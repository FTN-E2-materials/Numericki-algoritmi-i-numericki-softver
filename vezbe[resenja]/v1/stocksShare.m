%11. Napisati funkciju koja izra?unava broj akcija koji treba da se dodeli
%svakom zaposlenom u zavisnosti od broja godina radnog sta�a. Interfejs
%funkcije: stocks = stocksShare(years, totalStocks), gde su years godine
%radnog sta�a svih zaposlenih,  a totalStocks  ukupan broj akcija za
%raspodelu svim zaposlenima.

function stocks = stocksShare(years, totalStocks)
    ukupnoGodina = sum(years);
   	godina = totalStocks/ukupnoGodina;  
    stocks = round(years .* godina);
end


