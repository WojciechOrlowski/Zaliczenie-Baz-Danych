--1. gry posegregowane od najtańszej
CREATE VIEW `zap1` AS SELECT * FROM gry_planszowe ORDER BY cena ASC;
--2. zamówienia w drodze
CREATE VIEW `zap2` AS SELECT * FROM zamowienia WHERE status_zamowienia="w drodze";
--3. nazwiska osób które zamówiły grę o id=2 
CREATE VIEW `zap3` AS SELECT klienci.nazwisko FROM klienci, zamowienia WHERE zamowienia.idgry_planszowe=2 and zamowienia.idklienci=klienci.idklienci;
--4. zamówienia które są płacone przy odbiorze
CREATE VIEW `zap4` AS SELECT zamowienia.idzamowienia FROM zamowienia, płatność WHERE płatność.rodzaj_płatności="przy_odbiorze" and płatność.idzamowienia=zamowienia.idzamowienia;
--5. najdroższa dokonana płatność
CREATE VIEW `zap5` AS SELECT * FROM płatność ORDER BY koszt DESC LIMIT 1;
--6. wyświetla pracowników magazynu 
CREATE VIEW `zap6` AS SELECT * FROM pracownicy WHERE stanowisko="Magazynier";
--7. wyświetla klientów z Olsztyna
CREATE VIEW `zap7` AS SELECT * FROM klienci WHERE miejsce_zamieszkania="Olsztyn";
--8. wyświetla gry produkcji Hasbro 
CREATE VIEW `zap8` AS SELECT * FROM gry_planszowe WHERE producent="Hasbro";
--9. najwcześniej dokonane zamówienie
CREATE VIEW `zap9` AS SELECT * FROM zamowienia ORDER BY data_zamowienia ASC;
--10.gry posegregowane alfabetycznie
CREATE VIEW `zap10` AS SELECT * FROM gry_planszowe ORDER BY nazwa_produktu ASC;
