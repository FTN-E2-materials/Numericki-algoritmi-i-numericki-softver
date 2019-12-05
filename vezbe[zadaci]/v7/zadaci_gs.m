function ret = zadaci_gs() %gaus seidel zadaci
    %1) resiti sistem
    A=[9 3 1; 7 8 9; 4 1 9]; b=[33; 54; 13];
    x0=[0;0;0]; % nasa pretpostavka
    [x,it]=gs(A,b,x0,100,10^-5);
    
    %2) odrediti parametre
    A=[1.1960 0.3424 0.1747; 0.2449 1.0565 0.0751; 0.1980 0.2631 0.9159];
    b=[-2.6827;-3.7424; 0.9456];
    a0=[0;0;0]; A1=sin(A);
    [a,it]=gs(A1,b,x0,100,10^-5);
    
    %3) izmenom ne vise od 2 elementa matrice A definisati sistem jednacina
    %za koji iterativna metoda konvergida za dato pocetno x0:
    
    % Da bi sistem konvergirao, matrica A mora biti dijagonalno dominantna,
    % tj. absolutna vrednost elementa na dijagonali mora biti veca od sume
    % apsoltnih vrednosti elemenata koji pripadaju istom redu
    
    %zbog toga prvi element na dijagonali stavljamo da je veci od 2(abs(1)+abs(-1)) i
    %poslednji element u dijagonali da je veci od 2( 2+0 )
    A=[4 1 1; 1 2 0; -1 -1 3]; b=[1;2;3]; x0=[0;0;0];
    [x,it]=gs(A,b,x0,100,10^-5);
    
    %4)
    %smena t=1/y;
    A=[2 1; 1 2]; b=[1;-2];
    x0=[0;0];
    [t,it]=gs(A,b,x0,100,10^-5);
    x=t(1);
    y=1/t(2);
    it;
    %provera,za prvu trebamo dobiti 1 a za drugu -2
    2*x +1/y;
    x+2/y;
    
    %5) naci resenje sistema jednacina
    %smena t=1/z
    A=[4 2 0;1 2 0; 2 1 4]; b=[1; -1; 0];
    x0=[0;0;0];
    [t,it]=gs(A,b,x0,100,10^-5);
    x=t(1);
    y=t(2);
    z=1/t(3);
    it;
    
    %provera,moram dobiti 1 -1 i -4 
    4*x + 2*y;
    x+2*y;
    z*(2*x+y);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
end