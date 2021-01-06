DELIMITER $$
CREATE PROCEDURE najstarsza_ksiazka (OUT najstarsza YEAR)
BEGIN
SELECT MIN(rok_wydania) INTO najstarsza FROM ksiazka;
END;
CALL najstarsza_ksiazka(@M); $$
SELECT @M;