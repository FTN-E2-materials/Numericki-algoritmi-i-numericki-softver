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
 - Metoda **polovljenja** - garantovana konvergencija,ne zahteva prvi izvod ali spora i trazi interval u kom je resenje
 - **Regula falsi** - garantovana konvergencija(brza od polovljenja,sporija od secice),ne zahteva prvi izvod ali trazi interval u kom je resenje
 
###### Mana im je sto traze interval u kome se nalazi resenje.
 <br>
 
### Otvorene metode:

 - Metoda **secice**  - brza konvergencija (sporija od Njutnove) i ne zahteva prvi izvod ali nema garantovanu konvergenciju
 - **Njutnova** metoda - *veoma brza konvergencija*(ako je pocetno resenje blizu nule) ali nema garantovanu konvergenciju i zahteva postojanje prvog izvoda

###### Mogu divergirati ali nije potreban interval u kom se resenje nalazi.
</p>
