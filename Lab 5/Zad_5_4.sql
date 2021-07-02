/*5.4. Stwórz tabelê o nazwie STUDENCI i kolumnach:
- "Numer_indeksu" - klucz g³ówny, wartoœci numeryczne do 6-ciu cyfr
- "Imie" - ci¹g znaków o zmiennej d³ugoœci do 16 znaków, nie mo¿e byæ pusta
- "Nazwisko" - ci¹g znaków o zmiennej d³ugoœci do 32 znaków, nie mo¿e byæ pusta
- "Data_ur" - data, wartoœæ mo¿e byæ pusta
- "Srednia_ocen" - wartoœæ numeryczna o d³ugoœci 2 cyfr i dok³adnoœci do 1 miejsca 
   po przecinku, zawieraj¹ca waroœci od 2.0 do 5.5 (u¿yj ograniczenia CHECK),
   wartoœæ mo¿e byæ pusta
- "Plec" - ci¹g znaków o sta³ej d³ugoœci (1), dopuszczaj¹cy jedynie wartoœci 
  "M" oraz "F", nie mo¿e byæ pusta*/

CREATE TABLE STUDENCI ( 
    Numer_indeksu NUMBER(6), 
    Imie VARCHAR(16) NOT NULL,
    Nazwisko VARCHAR(32) NOT NULL,
    Data_ur DATE,
    Srednia_ocen NUMBER(2,1) CHECK (Srednia_ocen BETWEEN 2.0 AND 5.5),
    Plec VARCHAR(1) NOT NULL CHECK (Plec IN ('M','F')),
    PRIMARY KEY(Numer_indeksu) 

);