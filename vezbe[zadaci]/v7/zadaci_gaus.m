function ret = zadaci_gaus()
    %1)resiti sistem
    A=[5 8 5;4 2 7; 8 5 8];
    b=[48;43;69];
    
    x=gauss_PP(A,b);
    
    %2)naci presecnu tacku pravih u 3D prostoru
    A=[3 4 1; 1 0 1; 2 3 2];
    b=[3;3;1.5];
    
    x=gauss_PP(A,b);
    
    %3)odrediti parametre a0,a1,a2,a3
    
    A=[ 1 0.1 0.1^2 0.1^3
        1 0.3 0.3^2 0.3^3
        1 0.6 0.6^2 0.6^3
        1 1.2 1.2^2 1.2^3];
    b=[1.023; 1.261; 2.368; 9.064];
    a=gauss_PP(A,b);
    %provera
    f=@(x) a(1) + a(2)*x + a(3)*x.^2 + a(4).*x.^3;
    f(0.1);
    f(0.3);
    f(0.6);
    f(1.2);
    
    %4) resiti matricnu jednacinu (A^T)*x +B -2C=D
    A=[-1 2 -3; 3 -4 -2; -4 -4 4]; B=[10;14;-15]; C=[3;3;-3]; D=[-4;0;-1];
    %posto je A^T,moram transponovati A
    A1=A';
    %posto gaus radi za Ax=b,sve ostalo sto nije Ax prebacimo da je b
    b=D-B+2.*C;
    x=gauss_PP(A1,b);
    %provera,ako je tacno dobicemo D
    A'*x + B - 2*C;
    
    %5) naci resenje sistema jednacina
    A=[-3 -2 -3; -3 0 -5; -1 -4 5]; b=[11;7;5];
    x=gauss_PP(A,b)
    
    
    
    
    
    
    
    
    
    
    
    
end