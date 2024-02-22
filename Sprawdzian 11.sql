/*Na bazie TEST utwórz tabelę towary z następującymi kolumnami:
-ID_produkt z kluczem głównym, z autonumerowaniem wzratającym co 2
-nazwa, 
-rodzaj,
-kod (5),
-liczba_sztuk (int),
-cena (money),
-dostepny, 


Ustaw ograniczenie w koluminie dostepny dla wartości "T" lub "N"
Ustaw ograniczenie w kolumnie nazwa, tak żeby były nie powtarzające się nazwy produktów. 
Ustaw ograniczenie w koluminie rodzaj jako "spozywcze" jako domyslne
Ustaw ograniczenie w koluminie cena wartośc poczawszy od 6.5-25.5 
Ustaw ograniczenie w koluminie liczba_sztuk minimum 100
Ustaw ograniczenie w koluminie kod  rozpoczyna sie od Duzej litery "A"
Dodaj nową kolumnę promocja (int)
Ustaw ograniczenie w koluminie promocja albo "0" albo "10"

Po wprowadzeniu każdego ograniczenia sprawdź, czy działa dodająć rekord do tabelki.
*/
create database TEST;
use TEST;

create table towary
(
ID_produkt int primary key not null identity(1,2),
nazwa varchar(30),
rodzaj varchar(30),
kod varchar(5),
liczba_sztuk int,
cena int,
dostepny varchar(1)
)

select * from towary;

drop table towary;

/*1
*/

select * from towary;
/*2
*/
alter table towary add constraint nazwa unique(nazwa);

select * from towary;
/*3
*/
alter table towary add constraint domyslne default 'spozywcze' for rodzaj;

select * from towary;

/*4
*/
/*5
*/
 alter table towary add constraint liczba_sztuk check (liczba_sztuk>100);

 select * from towary;
/*6
*/
/*7
*/
alter table towary add promocja int;

select * from towary;
/*8
*/