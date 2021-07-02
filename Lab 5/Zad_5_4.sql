/*5.4. Stw�rz tabel� o nazwie STUDENCI i kolumnach:
- "Numer_indeksu" - klucz g��wny, warto�ci numeryczne do 6-ciu cyfr
- "Imie" - ci�g znak�w o zmiennej d�ugo�ci do 16 znak�w, nie mo�e by� pusta
- "Nazwisko" - ci�g znak�w o zmiennej d�ugo�ci do 32 znak�w, nie mo�e by� pusta
- "Data_ur" - data, warto�� mo�e by� pusta
- "Srednia_ocen" - warto�� numeryczna o d�ugo�ci 2 cyfr i dok�adno�ci do 1 miejsca 
   po przecinku, zawieraj�ca waro�ci od 2.0 do 5.5 (u�yj ograniczenia CHECK),
   warto�� mo�e by� pusta
- "Plec" - ci�g znak�w o sta�ej d�ugo�ci (1), dopuszczaj�cy jedynie warto�ci 
  "M" oraz "F", nie mo�e by� pusta*/

CREATE TABLE STUDENCI ( 
    Numer_indeksu NUMBER(6), 
    Imie VARCHAR(16) NOT NULL,
    Nazwisko VARCHAR(32) NOT NULL,
    Data_ur DATE,
    Srednia_ocen NUMBER(2,1) CHECK (Srednia_ocen BETWEEN 2.0 AND 5.5),
    Plec VARCHAR(1) NOT NULL CHECK (Plec IN ('M','F')),
    PRIMARY KEY(Numer_indeksu) 

);