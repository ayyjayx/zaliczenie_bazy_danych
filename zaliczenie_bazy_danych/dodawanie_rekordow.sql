USE biblioteka;
INSERT INTO autor(imie,nazwisko) VALUES 
('Joseph', 'Heller'),
('Oliver', 'Sacks'),
('Ralph', 'Ellison'),
('William', 'Somerset Maugham'),
('Jhumpa', 'Lahiri'),
('Jared', 'Diamond'),
('Roald', 'Dahl'),
('Barbara', 'Kingslover'),
('Ernest', 'Hemingway'),
('Rick', 'Rordian'),
('Frank', 'McCourt'),
('Kenneth', 'Grahame'),
('Lois', 'Lowry'),
('Eric', 'Carle'),
('Maurice', 'Sendak'),
('Edwidge', 'Danticat'),
('George', 'Orwell');

INSERT INTO Gatunek(nazwa_gatunku) VALUES
('Powieść'),
('Wywiad medyczny'),
('Fikcja'),
('Naukowy'),
('Fikcja historyczna'),
('Fantasy'),
('Pamiętnik'),
('Powieść dla dzieci'),
('Fikcja realistyczna'),
('Antyutopia'),
('Popularnonaukowa'),
('Horror'),
('Science fiction');

INSERT INTO Wydawnictwo(nazwa) VALUES
('Simon & Schuster'),
('Summit Books'),
('Doran Company'),
('Houghton Mifflin'),
('W. W. Norton'),
('Alfred A. Knopf'),
('Harper'),
('Scribners Sons'),
('Disney Hyperion'),
('Scribner'),
('Methuen'),
('Bantam Books'),
('Hamish Hamilton'),
('Harper & Row'),
('Soho Press'),
('Secker and Warburg');

INSERT INTO Ksiazka(tytul,id_autora,id_gatunku,rok_wydania,id_wydawnictwa) VALUES
('Paragraf 22',1,1,1961,1),
('The Man Who Mistook His Wife for a Hat',2,2,1985,2),
('Niewidzialny człowiek',3,1,1952,1),
('Of Human Bondage',4,1,1915,3),
('Interpreter of Maladies',5,3,1999,4),
('Strzelby, zarazki, maszyny. Losy ludzkich społeczeństw',6,4,1997,5),
('Charlie i fabryka czekolady',7,1,1964,6),
('The Poisonwood Bible',8,5,1998,7),
('Słońce też wschodzi',9,1,1926,8),
('Percy Jackson i Bogowie Olimpijscy: Złodziej Pioruna',10,6,2005,9),
('Popiół i żar: wspomnienie',11,7,1996,10),
('O czym szumią wierzby',12,8,1908,11),
('Dawca',13,1,1993,12),
('The Very Hungry Caterpillar',14,8,1969,13),
('Tam, gdzie żyją dzikie stwory',15,8,1963,14),
('Breath, Eyes, Memory',16,14,1994,15),
('Rok 1984',17,10,1949,16),
('Krótka historia czasu. Od Wielkiego Wybuchu do czarnych dziur',18,11,1990,12);

INSERT INTO uczen(imie, nazwisko, rok_ur, klasa) VALUES
('Alan', 'Janukiewicz', 2001, '3A'),
('Kajetan', 'Walczak', 2003,'1E'),
('Adam', 'Kalista', 2001 ,'3D'),
('Aleksander', 'Karpiesiuk', 2002,'2D'),
('Anna', 'Kowalska', 2001,'3B'),
('Patryk', 'Lewandowski', 2003,'1E'),
('Mateusz', 'Plust', 2002,'2D'),
('Jakub', 'Kłos', 2002,'2A'),
('Jakub', 'Gorzoch', 2001,'3B'),
('Mateusz', 'Grześ', 2003,'1A'),
('Mateusz', 'Grześkiewicz', 2001,'3A'),
('Filip', 'Klimek', 2001,'3A'),
('Damian', 'Zieliński', 2001,'3D'),
('Jan', 'Kamiński', 2003,'1B'),
('Jerzy', 'Kwiatkowski', 2001,'3A'),
('Paweł', 'Wójcik', 2002,'2B'),
('Marek', 'Mazur', 2003,'1D'),
('Grzegorz', 'Grabowski', 2001,'3C'),
('Zbigniew', 'Adamczyk', 2003,'1B'),
('Dariusz', 'Wieczorek', 2001,'3B'),
('Kazimierz', 'Malinowski', 2002,'2F'),
('Robert', 'Stępień', 2001,'3B'),
('Rafał', 'Kozłowski', 2003,'1E'),
('Jarosław', 'Dąbrowski', 2003,'1B'),
('Zdzisław', 'Nowak', 2001,'3A'),
('Dawid', 'Szewczyk', 2002,'2A');


INSERT INTO Wypozyczenie(id_ucznia, id_ksiazki, data_wypozyczenia, data_zwrotu) VALUES
(4, 2, '2020-12-09', '2020-12-13'),
(10, 13, '2020-11-26', '2020-12-03'),
(5, 1, '2020-11-29', '2020-12-08'),
(7, 11, '2020-11-20', '2020-11-22'),
(1, 5, '2020-10-29', '2020-11-12'),
(18, 4, '2020-12-02', '2020-12-10'),
(15, 3, '2020-10-09', '2020-10-13'),
(6, 10, '2020-11-05', '2020-11-12'),
(2, 12, '2020-10-30', '2020-11-13'),
(3, 6, '2020-10-30', '2020-11-07'),
(19, 8, '2020-12-01', '2020-12-03'),
(11, 9, '2020-11-25', '2020-12-03'),
(12, 7, '2020-12-04', '2020-12-11'),
(4, 15, '2020-11-08', '2020-11-22'),
(20, 14, '2020-12-10', '2020-12-17'),
(21, 13, '2020-11-15', '2020-11-23');