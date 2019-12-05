<h1 align = "center"> Metode </h1>

<p>

<h1 align="center"> Za resavanje linearnih jednacina </h1>

## Gausova eliminacija : gauss_pp(A,b)
###### Ako je nasa jednacina Ax=b. Metoda gauss_PP ocekuje matricu A,i vektor b kao ulazne parametre  a vraca x kao rezultat.
 - Mozemo resiti sistem jednacina
 - Mozemo naci presecnu tacku pravih prebacivanjem jednacina pravih u matricu A ,a resenja jednacina u vektor b, i pozivanjem gausa dobiti presecne tacke
 - Mozemo odrediti parametre (a0,a1,...) neke funkcije 
 - Mozemo resavati i matricnu jednacinu,samo je bitno da svedemo na Ax=b
 
## Iterativne metode : gs(A,b,x0,itMax,errMax) 
###### Gauß-Seidel-ova metoda,ako je nasa jednacina Ax=b. Ona vraca broj iteracija i x kao vektor
 - Moze resiti sitem jednacina
 - Moze odrediti parametre (a1,a2...) neke funkcije
 - Voditi racuna kad zelimo da metoda konvergia, u matrici A mora abs vrednost od elementa na dijagonali biti veca od sume abs vrednosti elemenata iz tog reda 
 
<h1 align="center"> Resavanje nelinearnih jednacina </h1>

### Zatvorene metode:
 - Metoda **polovljenja**
 - **Regula falsi**
 
###### Traze interval u kome se nalazi resenje.
 <br>
 
### Otvorene metode:

 - Metoda **secice**
 - **Njutnova** metoda

###### Mogu divergirati ali nije potreban interval u kom se resenje nalazi.
</p>
