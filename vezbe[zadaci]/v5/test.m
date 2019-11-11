function y = test()

    x = [0.7854    1.9635    3.1416    4.3197    5.4978];
    fX = [0.7071    0.9239    0.0000   -0.9239   -0.7071]; 

    scatter(x, fX), hold on 
    
    %Na?i polinom koji zadovoljava poznate ta?ke
    order = length(x) - 1; 
    % red polinoma mora biti za 1 manji od broja ta?aka 
    p = polyfit(x, fX, order)
    
    %Nacrtati prona?eni polinom: 
    x = linspace(min(x), max(x), 100); 
    pX = polyval(p, x); % ra?unanje vrednosti polinoma p za svaku vrednost vektora x 
    plot(x, pX, 'red');
    
    %Interpolacijom na?i nepoznatu vrednost u ta?ki x1 = 4Pi/5
    % a zatim na istom grafiku nacrtati dobijenu ta?ku: 
 
    x1 = 4*pi/5;
    pX1 = polyval(p, x1);
    scatter(x1, pX1, 'red');
    
    
    %Ekstrapolacijom na?i nepoznatu vrednost u ta?ki x2 = 2Pi, 
    % a zatim na istom grafiku nacrtati dobijenu ta?ku: 
 
    x2 = 2*pi;
    pX2 = polyval(p, x2);
    scatter(x2, pX2, 'red'); 
    
    %Stvarna funkcija koja zadovoljava ta?ke je f(x) = sin(x). 
    %Na istom grafiku nacrtati funkciju na intervalu x ? [0,3Pi],
    %a zatim na?i apsolutnu grešku u odnosu na stvarne vrednosti funkcije 
    % u tim ta?kama: 
 
    f = @(x) sin(x);
    x = linspace(0, 3*pi, 100);
    fX = f(x);
    plot(x, fX, 'black'), hold off   
    errAbs1 = abs(sin(x1) - pX1);
    errAbs2 = abs(sin(x2) - pX2);
 
    
end