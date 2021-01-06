DELIMITER $$
CREATE FUNCTION ilosc_uczniow_urodzonych_w_danym_roku(n int)
RETURNS INT
BEGIN
SELECT COUNT(rok_ur) FROM uczen WHERE rok_ur = n INTO n;
RETURN n;
END$$
# funkcja pokazuje ilu uczniow jest z danego roku