DELIMITER $$
CREATE PROCEDURE najstarsza_ksiazka (OUT najstarsza YEAR)
BEGIN
SELECT MIN(rok_wydania) INTO najstarsza FROM ksiazka;
END;
CALL najstarsza_ksiazka(@najstarsza); $$
SELECT @najstarsza;
