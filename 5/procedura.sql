DELIMITER $$
USE `sklep_z_grami_planszowymi`$$
CREATE PROCEDURE `przecena` (IN nazwa_produktu TEXT)
BEGIN
UPDATE gry_planszowe
SET cena=cena*0.9
WHERE name=nazwa_produktu;
END$$

DELIMITER ;