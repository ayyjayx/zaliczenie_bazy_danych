DELIMITER $$
CREATE TRIGGER sprawdzenie_wieku
BEFORE INSERT ON uczen FOR EACH ROW
BEGIN
IF NEW.klasa = '3H' THEN SET NEW.klasa = '3A';
END IF;
END $$
# funkcja przerzuca ucznia z klasy 3H do 3A

DELIMITER $$
CREATE TRIGGER data_w
BEFORE INSERT ON wypozyczenie FOR EACH ROW
BEGIN
SET NEW.data_wypozyczenia = CURDATE();
END $$
#funkcja wprowadza aktualna date