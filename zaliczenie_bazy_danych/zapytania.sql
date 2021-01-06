SELECT * FROM biblioteka.Autor; # jacy autorzy znajduja sie w bazie
SELECT * FROM biblioteka.ksiazka; # jakie ksiazki znajduja sie w bazie
SELECT * FROM ksiazka INNER JOIN autor ON ksiazka.id_autora = autor.id_autora; # autorzy i ich ksiazki
SELECT * FROM ksiazka WHERE rok_wydania BETWEEN 1950 AND 2000 ORDER BY rok_wydania ASC; # jakie ksiazki z bazy zostaly wydane miedzy 1950 a 2000 rokiem
SELECT (rok_ur), COUNT(rok_ur) AS 'Ilosc uczniow z danego roku' FROM uczen GROUP BY rok_ur; # ilosc uczniow urodzonych w danym roku
SELECT (klasa), COUNT(klasa) AS 'Ilosc uczniow z danej klasy' FROM uczen GROUP BY klasa; # ilosc uczniow danej klasy
SELECT COUNT(id_wypozyczenia) AS 'Wypozyczenia w 2020' FROM Wypozyczenie WHERE YEAR(data_wypozyczenia) = 2020; # ilosc wypozyczonych ksiazek w roku 2020
SELECT COUNT(id_wypozyczenia) AS 'Zwroty w 2020' FROM Wypozyczenie WHERE YEAR(data_zwrotu) = 2020; # ilosc zwroconych ksiazek w roku 2020
SELECT (nazwa_gatunku), COUNT(nazwa_gatunku) AS 'Ilosc ksiazek danego gatunku' FROM Gatunek RIGHT JOIN ksiazka ON Gatunek.id_gatunku = ksiazka.id_gatunku GROUP BY nazwa_gatunku; # ilosc ksiazek danego gatunku
SELECT CONCAT(imie,' ',nazwisko) AS 'Imie i nazwisko autora', COUNT(ksiazka.id_autora) AS 'Ilosc ksiazek' FROM autor RIGHT JOIN ksiazka ON autor.id_autora = ksiazka.id_autora GROUP BY ksiazka.id_autora; # ilosc ksiazek danego autora

CREATE VIEW query1 AS SELECT * FROM biblioteka.Autor;
CREATE VIEW query2 AS SELECT * FROM biblioteka.ksiazka; 
CREATE VIEW query3 AS SELECT * FROM ksiazka INNER JOIN autor ON ksiazka.id_autora = autor.id_autora; 
CREATE VIEW query4 AS SELECT * FROM ksiazka WHERE rok_wydania BETWEEN 1950 AND 2000 ORDER BY rok_wydania ASC; 
CREATE VIEW query5 AS SELECT (rok_ur), COUNT(rok_ur) AS 'Ilosc uczniow z danego roku' FROM uczen GROUP BY rok_ur; 
CREATE VIEW query6 AS SELECT (klasa), COUNT(klasa) AS 'Ilosc uczniow z danej klasy' FROM uczen GROUP BY klasa;
CREATE VIEW query7 AS SELECT COUNT(id_wypozyczenia) AS 'Wypozyczenia w 2020' FROM Wypozyczenie WHERE YEAR(data_wypozyczenia) = 2020;
CREATE VIEW query8 AS SELECT COUNT(id_wypozyczenia) AS 'Zwroty w 2020' FROM Wypozyczenie WHERE YEAR(data_zwrotu) = 2020;
CREATE VIEW query9 AS SELECT (nazwa_gatunku), COUNT(nazwa_gatunku) AS 'Ilosc ksiazek danego gatunku' FROM Gatunek RIGHT JOIN ksiazka ON Gatunek.id_gatunku = ksiazka.id_gatunku GROUP BY nazwa_gatunku;
CREATE VIEW query10 AS SELECT CONCAT(imie,' ',nazwisko) AS 'Imie i nazwisko autora', COUNT(ksiazka.id_autora) AS 'Ilosc ksiazek' FROM autor RIGHT JOIN ksiazka ON autor.id_autora = ksiazka.id_autora GROUP BY ksiazka.id_autora;