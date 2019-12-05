<h1 align = "center"> Priprema za kolokvijum </h1>

<p>
<br>
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

<br>
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

## Regula falsi - [zero, it] = zeroFalsePosition(f, a, b, errMax)
###### *Zatvorena metoda* .<br /> Vraca 'zero' (nulu) funkcije tj. gde se funkcija 'f' sece sa x-osom  na intervalu 'a' , 'b'. Za neku toleranciju errMax.

## Njutnova metoda - [zero, it] = zeroNewton(f, df, x0, errMax, itMax)
###### *Otvorena metoda*.<br /> Vraca nulu('zero') funkcije 'f' uz pomoc prvog izvoda bez potrebe za zadatim intervalom.

<br>
<h1 align="center"> Uklapanje polinomijalne krive u zadati skup tacaka. </h1>

###### Imamo funkciju f kojoj ne poznajemo tacan oblik tj. ne poznajemo tacnu zavisnost y od x.Sa druge strane mozemo da isvrsimo eksperimentalna merenja i pomocu njih dobijemo vrednosti y u odredjenim tackama x.<br />Problem je: kako odrediti vrednost y za zadate vrednosti x koje se ne nalaze medju izmerenim vrednostima, ako ne znamo formulu y=f(x) a znamo npr neke samo tacka (Xi,Yi). <br /> Problem resavamo *aproksimacijom* funkcije f drugom funkcijom (g ~ f). Formula funkcije g ce nam biti poznata i moci cemo je koristiti da odredimo nepoznate vrednosti funkcije f. <br /> Postoje dva osnovna pristupa kojim mozemo da odredimo funkciju g:
 - **Interpolacija** - funkcija g *mora* da prodje kroz svaku od poznatih tacaka (Xi,Yi)
 - **Regresija** - funkcija g je ona koja se *najbolje uklapa* u date podatke 
 ###### Mada, bez obzira koju metodu koristimo, kada smo odredili funkciju g~f, mozemo da je koristimo za odredjivanje vrednosti funkcije f u nepoznatim tackama.

## Interpolacija - p = lagrangeInterp(x, fX)
###### Nasa funkcija 'g' je ustvari kod Lagranzeve interpolacije interpolacioni polinom tj g(x) = p1*x^(N-1) + p2*x^(N-2) +...+p(N-1)*x +pN odnosno u MATLAB-u g=[p1,p2,...,pn].<br /> Dve tacke jedinstveno definisu polinom prvog stepena,tri tacke jedinstveno definisu polinom drugog stepena,a 4 tacke jedinstveno definisu polinom 3 stepena itd tj.<br /> *N tacka jedinstveno odredjuje polinom stepena N-1* <br /> Nasa funkcija lagrangeInterp(x,fX) ocekuje vrednosti x i y a vraca polinom p

## Regresija - p = lSquares(x, fX, order)
###### Order stepen polinoma sa kojim aproksimiramo funkciju 

</p>







