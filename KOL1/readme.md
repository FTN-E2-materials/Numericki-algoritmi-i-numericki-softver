<h1 align = "center"> Masinska reprezentacija brojeva i greske </h1>

## Pokretni zarez - floating point
Opsti oblik broja u pokretnom zarezu:

![brate](https://user-images.githubusercontent.com/45834270/70813071-284d2d80-1dc9-11ea-99d1-5051975add6d.png)

***Znak*** je pozitivan ili negativan broj, ***mantisa*** sadrzi znacajne cifre, ***baza*** je sistem koji koristimo (10 za dekadni, 2 za binarni) a ***eksponent*** je velicina broja 

## Normalizovani oblik

![mmm](https://user-images.githubusercontent.com/45834270/70814013-e329fb00-1dca-11ea-8540-aadfa6a7af57.png)

## Binarna reprezentacija

![matpogl](https://user-images.githubusercontent.com/45834270/70814960-e3c39100-1dcc-11ea-802d-3c5d44448ce3.png)

Ako imamo 9 bitova da reprezentujemo realan broj:
  - prvi bit je za znak mantise
  - drugi bit je za znak eksponenta
  - sledeca 4 bita su za mantisu i
  - sledeca 3 za eksponent

![bravo](https://user-images.githubusercontent.com/45834270/70815934-b8da3c80-1dce-11ea-80e1-96ce2569bbb3.png)


## IEEE 754 standard za reprezentaciju realnih brojeva 

![dda](https://user-images.githubusercontent.com/45834270/70816156-2a19ef80-1dcf-11ea-8b54-ea0d8dc2dcfb.png)

U ovom standardu nemamo bit za znak eksponenta !

## Zaokruzivanje
  - **Odsecanje** : postupak kojim se odsecaju cifre od neke cifre na desno,bez korekcije vrednosti preostalog broja
  - **Zaokruzivanje na najblizi** 
    - gledamo poslednju cifru d
    - d > 5 zaokruzimo na najblizi veci masinski broj
    - d < 5 zaokruzimo na najblizi manji masinski broj
    - d = 5 zaokruzimo na najblizi parni masinski broj ( u IEEE 754 standardu )

Najveca greska za ***chopping*** je razmak izmedju dva binarna broja npr. 1.9999... zaokuzimo na 1 <br />
Najveca greska za ***rounding*** je pola razmaka izmedju dva binarna broja npr. 1.49... zaokruzimo na 1

## Masinska tacnost
Je razlika izmedju 1.0 i najblizeg broja koji moze da se reprezentuje u brojevnom sistemu.

## Znacajne cifre 
Su one koje mogu da se koriste sa pouzdanoscu. Saopstava ih onaj koji vrsi merenje.<br />
Pravila za prepoznavanje znacajnih cifara: 
  - sve cifre razlicite od 0 su znacajne ( 1.234 ima 4 znacajne cifre)
  - nule izmedju cifara razlicitih od 0 su znacajne ( 1002 ima 4 znacajne cifre )
  - nule pre prve cifre razlicite od 0 nisu znacajne( 0.0001 ima 1 znacajnu cifru, 0.012 ima 2 znacajne cifre )
  - sve nule posle poslednje cifre razlicite od 0 su znacajne ( 0.0230 ima 3 znacajne cifre , 0.20 ima 2)
  - ako broj nije decimalan, a ima nule na kraju za njh se ne moze tvrditi da li su znacajne ili ne (150 moze imati 2 ili 3 znacajne cifre )
    - da bi se ovo izbeglo preporucuje se upotreba tzv. naucne notacije ( 5.06 * 10^4 ima 3 znacajne cifre )


## Greske
  - *ne-numericke greske*
    - ***greske u modelovanju*** : zanemarujemo neke faktore iz realnog sveta koji nam nisu od znacaja
    - ***ljudske greske***
    - ***nepreciznost u informacijama i merenjima*** (greske mernih instrumenata...)
  - *numericke greske*
    - ***greske zaokruzivanja(rounding error)***
    - ***greske odsecanja ili zanemariavanja***
    - ***greske koje su posledica nagomilavanja prethodnih gresaka***
    
## Prava greska
Razlika izmedju tacnog(pravog - moze se izracunati samo kad znamo tacno resenje-sto je retko) resenja i rezultata numericke metode

![aaa](https://user-images.githubusercontent.com/45834270/70821037-59822980-1dda-11ea-9bd9-bba9593477b1.png)

## Relativna prava greska
Problem sa pravom greskom je to sto ne mozemo uvek da kazemo da li je vrednost koju smo dobili mala ili velika pa definisemo relativnu pravu gresku da bi imali gresku u procentima: 

![asd](https://user-images.githubusercontent.com/45834270/70822156-2725fb80-1ddd-11ea-99df-6001dac6d015.png)

## Aproksimirana greska - priblizna greska
Definismo aproksimiranu gresku kao razliku trenutne i prethodne procene resenja:

![aadadad](https://user-images.githubusercontent.com/45834270/70840077-4e49f080-1e10-11ea-90bf-b4e7875724a5.png)

Aproksimirana greska se cesto koristi kao kriterijum zaustavljanja numerickih algoritama:

![ajdenaco](https://user-images.githubusercontent.com/45834270/70822772-a9fb8600-1dde-11ea-8b74-7454bbe5a00d.png)

## Relativna aproksimirana greska
Koristimo je da mozemo da procenimo koliko je velika aproksimirana greska.

![vvvv](https://user-images.githubusercontent.com/45834270/70822876-e929d700-1dde-11ea-83e7-9fe4374fad89.png)

## Greska odbacivanja/odsecanja
Je greska koja nastaje pojednostavljivanjem matematickog izraza.

<h1 align = "center"> Numericke metode Linearne algebre </h1>

Matricni oblik: **Ax=b**
## Dobro uslovljen sistem
<p align="center">
  <img width="650" height="370" src="https://user-images.githubusercontent.com/45834270/70726638-b14b6280-1cfe-11ea-9629-12032f59829e.png">
</p>
<hr>
<p align="center">
  <img width="650" height="370" src="https://user-images.githubusercontent.com/45834270/70726737-d9d35c80-1cfe-11ea-8ba4-6ee1f28947a8.png">
</p>

<p align="center">
  <img width="650" height="370" src="https://user-images.githubusercontent.com/45834270/70726868-07200a80-1cff-11ea-87a9-eb8d9110365e.png">
</p>

## Lose uslovljen sistem

<p align="center">
  <img width="650" height="370" src="https://user-images.githubusercontent.com/45834270/70726954-27e86000-1cff-11ea-9b21-6d25e2632275.png">
</p>
<hr>

## Gausova eliminacija
Direktan metod koji nema iteracije.Koraci:
  - Eliminacija unapred
    - kolonu po kolonu eliminisemo elemente ispod glavne dijagonale
    - rezultat je gornja trougaona matrica
  - Zamena unazad
    - izracunamo xn direktno
    - unazad zamenom racunamo ostale od xn-1 do x1

<p align="center">
  <img width="650" height="370" src="https://user-images.githubusercontent.com/45834270/70727911-c6c18c00-1d00-11ea-96bb-9fb0a7e68386.png">
</p>

**Problemi sa Gausovom eliminacijom**
  - deljenje nulom
  - deljenje malim brojevima( greske u zaokruzivanju )
  - lose uslovljeni sistemi ( sistemi gde male promene u koeficijentima dovode do velikih promena u resenju )
  
  
## Parcijalni pivoting
Problem deljenja nulom ili jako mali brojevima resava se "pivotingom"
  - kad radimo eliminaciju unapred biramo uvek pivot koji ima najvecu apsolutnu vrednost u toj koloni
  - zamenimo trenutnu jednacinu sa tom kod koje smo pronasli najveci element tj. **parcijalni pivoting**
  
## Iterativne metode
Kod iterativnih metoda krecemo od odabrane pocetne vrednosti x^0 ( bira je korisnik) i potom koristimo iterativnu formulu koja daje vezu izmedju xk i xk-1.Uslov zaustavljanja je |xk - xk-1| < tolerancija
<br>
Sistem Ax=b transformisemo u oblik **x=Tx+c**. Uzimamo pocetno resenje x^0 i pomocu iterativne formule x^k = Tx^(k-1)+c kreiramo niz x0,x1...xk

## Jakobijev metod
Jakobijev metod je iterativni metod za resavanje SLAJ. Njegova mana je sto za izracunavanje trenutne komponente resenja Xi^(k+1) ne koristimo najnovije informacije tj. sve do tada izracunate Xj^(k+1), gde je j=1....i-1. Formula za odredjivanje komponenti resenja: 

![12](https://user-images.githubusercontent.com/45834270/70748266-f638be80-1d29-11ea-82c3-88a4bd69fb10.png)

![2](https://user-images.githubusercontent.com/45834270/70748914-4a906e00-1d2b-11ea-9ce1-17e82dcfccc7.png)

![3](https://user-images.githubusercontent.com/45834270/70749070-b07cf580-1d2b-11ea-8119-7598ee929262.png)

## Gaus-Zajdelov metod
Gauss-Seidelov metod je iterativni metod za resavanje SLAJ. Ideja metoda je da za izracunavanje trenutne komponente resenja Xi^(k+1) koristimo najnovije informacije tj. sve do tada izracunate Xj^(k+1), gde je j=1...i-1. Formula za odredjivanje komponenti resenja:

![44](https://user-images.githubusercontent.com/45834270/70750719-32bae900-1d2f-11ea-808b-f2704dfd74d8.png)

![pufkepurger](https://user-images.githubusercontent.com/45834270/70750941-ac52d700-1d2f-11ea-90d3-867bd8fd47e6.png)

## Konvergencija iterativnih metoda - Spektralni radijus
Za svaku matricnu normu vazi: 

![pufkegej](https://user-images.githubusercontent.com/45834270/70751730-6139c380-1d31-11ea-9989-8b21c374c246.png)

Pa ako je ro(T) >= 1 onda je i ||T|| >= 1, pa metod divergira. Znaci da ro(T)<1 je ***potreban uslov za konvergenciju*** tj. ako on ne vazi metod divergira. Moze se pokazati da **ro(T) < 1 => ||T|| < 1** sto znci da je ro(T)<1 i ***potreban i dovoljan uslov*** za konvergenciju.

## Konvergencija Jakobijevog metoda
Ako je matrica A dijagonalno dominanta, Jakobijev metod konvergira za bilo koje pocetno resenje.Matrica A je dijagonalno dominantna ako vazi da je apsolutna vrednost elementa sa dijagonale veca od sume apsolutnih vrednosti ostalih elemenata iz te vrste.

## Konvergencija Gaus-Zajdelovog metoda
Metod konvergira za bilo koje pocetno resenje ako je matrica A dijagonalno dominantna.

## Perfomanse iterativnih metoda 
Ako je broj iteracija potrebnih za konvergenicju mnogo manji od n, tada su iterativne metode efikasnije od direktnih.


<h1 align = "center"> Resavanje nelinearnih jednacina </h1> 

Data nam je funkcija f(x). Cilj nam je da odredimo tacku X, za koju vazi f(X)=0. Za odredjivanje tacke X, koristimo iterativni postupak koji se sastoji od iterativne formule koja daje nacin za odrejivanje trenutne procene resenja X^k pomocnu prethodne procene X^(k-1). Krecemo od pocetne procene resenja X^0(koja je data ili je biramo) i pomocu iterativne formule kreiramo niz procena X^0,X^1,...X^k... Iterativni postupak mozemo zaustaviti posle zadatog broja iteracija ili ako razlika izmedju trenutne i prethodne procene padne ispod zadate tacnosti.

![3](https://user-images.githubusercontent.com/45834270/70756783-cc899280-1d3d-11ea-8f4b-590e9cd4b50f.png)

## Zatvorene metode
Kod zatvorenih metoda algoritam krece od **zatvorenog intervala** koji *sadrzi resenje*, svakim sledecim korakom taj interval se smanjuje:
  - dok se interval ne svede na jednu tacku tj. resenje ili
  - dok velicina intervala ne padne ispod zadate tolerancije

## Otvorene metode 
Kod otvorenih metoda algoritam krece od **pocetnog resenja** X^0. Svakim sledecim korakom dobija se nova procena X^0,X^1,...X^k... Algoritam se zaustavlja kad:

![aaa](https://user-images.githubusercontent.com/45834270/70757141-d19b1180-1d3e-11ea-9237-8c4d22d44f21.png)


## Metoda polovljenja
Zahteva zatvoreni interval za koji je poznato da sadrzi resenje i ona sistematski smanjuje(polovi) zatvoreni interval. Pre svakog polovljenja izvrsava se jednostavna provera na osnovu koje se donosi odluka koja polovina se dalje polovi a to polovljenje se zaustavlja kad je trenutni interval dovoljno mali.
<br>
### Pretpostavke:
  - f(x) je neprekidna na [a,b]
  - f(a) * f(b) < 0
### Algoritam:
  - Izracunati polovinu c = (a+b)/2
  - Izraunati f(c)
  - Ako je 
    - f(a) * f(c) < 0 novi interval je [a,c]
    - f(a) * f(c) > 0 novi interval je [c,b]
  - Ako |b-a| < tolerancija vrati c=(a+b)/2 kao resenje
  
### Konvergencija
Metoda **garantovano konvergira** ali sporo i to **linearno**

![pmk](https://user-images.githubusercontent.com/45834270/70758295-d19d1080-1d42-11ea-8cd0-859fe7c94a83.png)


## Metoda secice
Metoda secice je iterativna metoda za odredjivanje nula funkcije f(x). Ideja je da prilikom trazenja nule, f(x) zamenimo pravom na malom intervalu(linearna interpolacija). Umesto da trazimo nulu f(x) koja moze biti komplikovanog oblika, trazimo nulu prave koja je jednostavna. Pretpostavka je da imamo dve pocetne tacke Xi i Xi-1 takve da vazi f(Xi) != f(Xi-1). Sledeca procena, tacka Xi+1 dobija se pomocu formule:
![batoooo](https://user-images.githubusercontent.com/45834270/70758740-2e4cfb00-1d44-11ea-94b3-f02ef6698799.png)
  

### Rezime metode secice
Prednost je brza konvergencija(superlinearno) i ne zahteva da se resenje nalazi u pocetnom intervalu,dok su mane to sto konvergencija nije uvek zagarantovana i broj iteracija potreban za toleranciju se ne moze unapred znati.


## Metoda Regula falsi ( false position )
Je iterativna metoda za odrdjivanje nula funkcije f(x). Ona uvodi u metodu secice zahtev da se resenje nalazi u zatvorenom intervalu, tj. da na pocetku vazi f(a) * f(b) < 0 i time dobijamo metodu koja malo sporije, ali **garantovano konvergira**.

## Njutnova metoda ( metoda tangente )
Je iterativna metoda za odredjivanje nula funkcije f(x). Ideja metode je da se funkcija izmedju svake dve procene resenja aproksimira tangentom. Tacka u kojoj tangenta sece x-osu je sledeca procena resenja.

![asa](https://user-images.githubusercontent.com/45834270/70759538-f8f5dc80-1d46-11ea-9ab4-97c4868cdc2c.png)

![abra](https://user-images.githubusercontent.com/45834270/70759611-42462c00-1d47-11ea-99b5-0bee685d4ffd.png)


<h1 align = "center"> Aproksimacija funkcija </h1>
<h1 align = "center"> Interpolacija </h1>

Interpolacija je metod za odredjivanje nepoznatih vrednosti koje se nalaze izmedju vrednosti koje su nam poznate.Poznat nam je skup podataka (x1,y1),(x2,y2),....(xn,yn). Zelimo da odredimo y za x koje nije ni jedno od xi. Da bi procenili y za novo x, vrsimo interpolaciju poznatih x, tako sto kreiramo funkciju koja mora da **prodje kroz svaku od tacaka** (xi,yi). Najuobicajeniji tip je interpolacija polinomom.

![inte](https://user-images.githubusercontent.com/45834270/70760512-255f2800-1d4a-11ea-8729-0f2e0afab34a.png)

**Inerpolacija**
  - podaci koje zelimo da odredimo ***nalaze se*** u rasponu podataka koje imamo. 

**Ekstrapolacija**
  - podaci koje zelimo da odredimo se **ne nalaze** u rasponu podataka koje imamo.

## Interpolacija polinomom
Dat nam je niz parova tacaka (xi,yi) koji predstavljaju vrednosti funkcije koju aproksimiramo. Ideja postupka interpolacije je odredjivanje polinoma takvog da prolazi kroz sve date tacke tj. mora da vazi g(xi)=yi, za sve date (xi,yi), g(x) je onda **interpolacioni polinom**.

## Njutnova interpolacija
Posto mozemo dobiti i za svega 4 tacke lose uslovljen sistem , treba nam bolji pristup od resavanja SLAJ pa onda uvodimo **Njutnov zapis interpolacionog polinoma**.
Koriste se Njutnove "podeljene (konacne) razlike" da bi se odredili koeficijenti polinoma koji ima oblik: 

![sdd](https://user-images.githubusercontent.com/45834270/70761252-d961b280-1d4c-11ea-9f6c-656236f98942.png)

Koeficijenti nizeg reda ( stepena ) ostaju isti kad se poveca stepen polinoma sto znaci da je lako dodati nove podatke( tacke ) i uraditi interpolaciju polinomom veceg stepena.

![sdsdsd](https://user-images.githubusercontent.com/45834270/70761777-b33d1200-1d4e-11ea-8099-f5b23bfe91de.png)

![abrate](https://user-images.githubusercontent.com/45834270/70762501-07e18c80-1d51-11ea-9ecc-8aaebe9d36bf.png)

## Opsta formula za Njutnov polinom:
  
![stanekulturno](https://user-images.githubusercontent.com/45834270/70762775-2dbb6100-1d52-11ea-865a-d1c402a84a4d.png)

![stalevopise](https://user-images.githubusercontent.com/45834270/70762783-3744c900-1d52-11ea-80d5-ad3949d6b5c4.png)

### Iterativni algoritam
  - izracunati sve konacne razlike prvog reada pomocu vrednosti funkcije f(xi)
  - izracunati sve *konacne razlike* drugog reda koristeci razlike prvog reda
  - nastaviti proces do razlike n-tog reda

Prednost Njutnovog polinoma je u tome sto pri dodavanju novih tacaka ne moramo ponovo da izracunavamo sve koeficijente. Moramo samo da sracunamo onaj uz najveci stepen( jer je sad stepen za jedan veci, zato sto smo dodali novu tacku).

## Lagranzova interpolacija 
Je drugaciji nacin za formiranje intepolacionog polinoma, podsetimo se da za N tacaka postoji jedinstveni polinom stepena N-1 koji prolazi kroz njih a to znaci da za zadatih N tacaka, govorimo o Njutnovom i Lagranzovom obliku istog polinoma.

Lagranzov polinom ima sledeci oblik:

![lll](https://user-images.githubusercontent.com/45834270/70763470-812eae80-1d54-11ea-8a99-77b8d9a540e0.png)

![22212](https://user-images.githubusercontent.com/45834270/70763543-b6d39780-1d54-11ea-87cf-b4de6826bed0.png)

![sadwwwwwwwww](https://user-images.githubusercontent.com/45834270/70763582-dcf93780-1d54-11ea-9d00-24f963c97dac.png)

Lagranzov polinom je pogodan za slucajeve kada imamo vise razlicitih skupova yi za iste xi, jer Lk(x) zavise samo od x, trebaju da se izracunaju samo jednom. Nije toliko pogodan za dodavanje novih tacaka kao Njutnov polinom.

## Inverzna interpolacija 
Do sada, za date x i f(x) interpolacija nam daje mogucnost da izracunamom f(x) za novo x. Do ekstrapolacije nas dovodi pitanje "Sta bi bilo ako zelimo da odredimo u kojoj tacki x funkcija f(x) ima vrednost k?"
  - zameniti x i f(x) i uraditi interpolaciju ( imacemo oscilacije )
  - interpolirati f(x) u tackama x -> dobijamo g(x). Upotrebimo metode za odredjivanje nula funkcija da bi pronasli x takvo da je g(x) = k


## Interpolacija Splajnom (deo-po-deo)
Ideja deo-po-deo interpolacije je odredjivanje zasebnih interpolacionih polinoma za svaki interval [xi,xi+1]. Takvi polinomi su nizeg stepena u odnosu na jedan polinom koji prolazi kroz sve tacke. Razlozi za deo-po-deo interpolaciju su to sto: za veliki broj datih tacaka intrpolacioni polinom koji prolazi kroz sve tacke ima jako veliki stepen,takav polinom ima velike oscilacije u prostoru u kome radimo, osetljiv je na sum u podacima, operacije kao stu su evaluacija u tacki, odredjivanje izvoda itd. su racunski zahtevne.A deo-po-deo interpolacioni polinomi prevazilaze sve navedene nedostatke.

<h1 align = "center" > Regresija </h1>

Regresija pruza alternativni nacin za resavanje problema sa velikim skupovima tacaka. Regresija ima za cilj da pronadje funkciju koja se "*najbolje uklapa*" u podatke uz sledece dve pretpostavke:
  - rezultujuca funkcija ne mora da prodje kroz svaku tacku
  - ako koristimo polinom, njegov stepen ne zavisi od broja tacaka, vec ga zadaje korisnik

![siugapufke](https://user-images.githubusercontent.com/45834270/70803442-5ecc7d80-1db4-11ea-9a2c-22a19384258f.png)

## Regresija - opsti problem
Za zadate podatke { (xi,yi); i=1....N} , oblik funkcije g(x) i kriterijum za meru "najboljeg uklapanja" odrediti nepoznate *parametre* funkcije g(x) . Postoji vise mogucnosti za oblik funkcije g(x). Zavisno od njega, imamo razlicit broj ***parametara*** koje treba da odredimo: 

![pufkebata](https://user-images.githubusercontent.com/45834270/70804515-f92dc080-1db6-11ea-9906-58e5b6166fff.png)

Dva nacina za definisanje kriterijuma "najbolje uklapanje" ( yi -date tacke, f(xi) - nasa procena):
  - Tacno uklapanje ( Interpolacija )
    - yi=g(xi)
  - Regresija najmanjih kvadrata (lSquares)
    - odredjujemo minimum kvadrata gresaka: ![bratevodiracuna](https://user-images.githubusercontent.com/45834270/70805013-3c3c6380-1db8-11ea-9708-9a52fa74b3ad.png)

## Merenje kvaliteta regresione funkcije 
Ako je f(xi) procena regresione funkcije, a yi data vrednost, prvo sto mozemo da uradimo je da saberemo kvadrate gresaka : ![fib](https://user-images.githubusercontent.com/45834270/70806041-b5d55100-1dba-11ea-8b63-56c13f64975d.png)

**SST** ( sum of squares total ) :   ![ba](https://user-images.githubusercontent.com/45834270/70806673-22048480-1dbc-11ea-85d6-d67a93828707.png)

**SSR** ( sum of squares regression ):    ![Screenshot_1](https://user-images.githubusercontent.com/45834270/70806799-64c65c80-1dbc-11ea-8b12-8c9e808a1ab9.png)

## Koeficijent determinacije  r^2
Sluzi za merenje kvaliteta regresije:     ![karap](https://user-images.githubusercontent.com/45834270/70806956-bff84f00-1dbc-11ea-9b3a-3bc98a5ca64b.png)

Ako regresija ne donosi nikakvo poboljsanje u odnosu na samo srednju vrednost onda je SSR=0 -> r^2 = 0 <br />
Ako se regresiona prava savrseno uklapa u date podatke onda je SSR=SST -> r^2 = 1

## Tipicna greska procene
Mera tacnosti procene dobijene pomocu regresione jednacine:  ![aaa](https://user-images.githubusercontent.com/45834270/70807899-cbe51080-1dbe-11ea-8563-226388fa773a.png) gde je n broj tacaka u datom skupu podataka, a m je broj nezavisnih promenljivih. Na ovaj nacin merimo koliko regresiona funkcija tipicno odstupa od datih tacaka.

## Regresija polinomom proizvoljnog stepena
Dat nam je niz parova tacaka (xi,yi) koji predstavljaju rednosti funkcije koju aproksimiramo. Funkciju aproksimiramo polinomom( oznacenim sa f(x) ), ciji se stepen zadaje unapred i mora bitibar za jedan manje od broja tacaka.

![aa2](https://user-images.githubusercontent.com/45834270/70808979-2b442000-1dc1-11ea-8bd1-006745648ff9.png)

Polinom uklapamo u date tacke tako da minimizujemo zbi kvadrata gresaka. Greska predstavlja razliku izmedju vrednosti yi za dato xi i vrednosti polinoma u xi tj f(xi).

![21212sss](https://user-images.githubusercontent.com/45834270/70809109-65adbd00-1dc1-11ea-9c69-7d16ba047e41.png)

Minimum zbira kvadrata gresaka odredjujemo izjednacavanjem parcijalnih izvoda E po svakom koeficijentu polinoma sa nulom. Na aj nacin dobijamo formulu za odredjivanje polinoma : 

![anci](https://user-images.githubusercontent.com/45834270/70809213-9e4d9680-1dc1-11ea-807e-8746d47675ba.png)






