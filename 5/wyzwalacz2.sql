DELIMITER $$
CREATE TRIGGER obniżka_cen
BEFORE INSERT ON gry_planszowe for each row
BEGIN IF new.cena>100 then set new.cena=100; 
END if;
END $$ 