DELIMITER $$
USE `sklep_z_grami_planszowymi`$$
CREATE FUNCTION `zaokrąglona_cena` (zaokrąglona_cena int)
RETURNS INTEGER
BEGIN
SELECT nazwa_produktu, cena, ROUND(cena, 1) AS zaokrąglona_cena FROM gry_planszowe;
RETURN 1;
END$$