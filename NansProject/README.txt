Projekat primene Lagranzove interpolacije, Jelena Kostic RA/81-2014, NAiNS 2017:

-Program se pokrece iz Matlaba

-Prvo se pokrece skripta Project.m, koja poziva funkcije get_image, get_polynomes i get_keys.

**Kada se pojavi upit 'Unesite naziv slike: ' treba da unesete naziv slike koju zelite da obradite.

**Pojavice se velicina slike i upit 'Unesite broj ljudi potreban da otkrije tajnu: '
	-tu treba da unesete neki broj: -manji od od 11 i veci od 1 
					-koji deli proizvod dimenzija slike
	-taj broj predstavlja element k u (k,n) semi - stepen polinoma

**Zatim ce se pojaviti upit 'Unesite broj ljudi kojima cete dati kljuc: '
	-treba da unesete element n u (k,n) semi - broj kljuceva koje cete napraviti
	-broj treba da bude manji od 11 i veci od 1 i veci/jednak od broja k koji ste uneli u koraku pre

**Nakon toga ce biti kreirano n kljuceva, imena 'Ki.png', gde je i redni broj kljuca.

-Drugi deo programa se pokrece nakon zavrsetka prvog, iz skripte ProjectAfter.m, koja poziva funkcije get_after_polynomes,
crt, linterp i get_final_image.

-Kada se pokrene drugi deo programa, pojavice se upit 'Koliko je ljudi potrebno da otkrije tajnu? '
	-tu treba da unesete broj k koji ste uneli u prvom delu (stepen polinoma).

-Zatim cete morati da unesete parove (redni broj kljuca, naziv kljuca) onoliko puta koliko ste uneli u proslom koraku.

-Kada zavrsite sa unosom, program ce krenuti da dekriptuje sliku i ispisivace stanje o tome koliko je piksela otkriveno do sad.

-Kada program zavrsi sa radom, automatski ce biti prikazana slika koja se dobila dekripcijom.

-U arhivi imate prilozena tri primera, koja se razlikuju po velicini i vremenu obrade.

-Preporuka je da ne birate velike vrednosti za k ili sliku velikih dimenzija, jer se vreme obrade znatno povecava sa povecanjem stepena polinoma/dimenzija.
(Obrada slike PandaP.png, sa k=3, traje otprilike 5 minuta)
