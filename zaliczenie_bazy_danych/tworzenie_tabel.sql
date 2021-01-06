CREATE DATABASE biblioteka;
USE Biblioteka;

CREATE TABLE Autor(
  id_autora INT PRIMARY KEY AUTO_INCREMENT,
  imie VARCHAR(15),
  nazwisko VARCHAR(30));

CREATE TABLE Gatunek(
  id_gatunku INT PRIMARY KEY AUTO_INCREMENT,
  nazwa_gatunku VARCHAR(20));

CREATE TABLE Wydawnictwo(
  id_wydawnictwa INT PRIMARY KEY AUTO_INCREMENT,
  nazwa VARCHAR(20));

CREATE TABLE uczen(
  id_ucznia INT PRIMARY KEY AUTO_INCREMENT,
  imie VARCHAR(15),
  nazwisko VARCHAR(30),
  rok_ur YEAR,
  klasa VARCHAR(3));
  
  CREATE TABLE Ksiazka(
  id_ksiazki INT PRIMARY KEY AUTO_INCREMENT,
  tytul VARCHAR(100),
  id_autora INT,
  id_gatunku INT,
  id_wydawnictwa INT,
  rok_wydania YEAR,
  FOREIGN KEY(id_autora) REFERENCES Autor(id_autora),
  FOREIGN KEY(id_gatunku) REFERENCES Gatunek(id_gatunku),
  FOREIGN KEY(id_wydawnictwa) REFERENCES Wydawnictwo(id_wydawnictwa));
  
CREATE TABLE Wypozyczenie(
  id_wypozyczenia INT AUTO_INCREMENT PRIMARY KEY,
  id_ksiazki INT,
  id_autora INT,
  id_gatunku INT,
  id_wydawnictwa INT,
  id_ucznia INT,
  data_wypozyczenia DATE,
  data_zwrotu DATE,
  FOREIGN KEY(id_ucznia) REFERENCES Uczen(id_ucznia),
  FOREIGN KEY(id_ksiazki) REFERENCES Ksiazka(id_ksiazki),
  FOREIGN KEY(id_autora) REFERENCES Autor(id_autora),
  FOREIGN KEY(id_gatunku) REFERENCES Gatunek(id_gatunku),
  FOREIGN KEY(id_wydawnictwa) REFERENCES Wydawnictwo(id_wydawnictwa));