    DELIMITER // 
    CREATE TRIGGER stanowisko_pracownika
    BEFORE INSERT ON pracownicy
    FOR EACH ROW BEGIN SET NEW.stanowisko = now();

    END