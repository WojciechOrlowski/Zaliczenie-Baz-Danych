CREATE DATABASE IF NOT EXISTS `sklep_z_grami_planszowymi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sklep_z_grami_planszowymi`;

CREATE TABLE IF NOT EXISTS `gry_planszowe` (
  `idgryplanszowe` int NOT NULL AUTO_INCREMENT,
  `nazwa_produktu` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `producent` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `cena` float NOT NULL,
  PRIMARY KEY (`idgryplanszowe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `gry_planszowe` (`idgryplanszowe`, `nazwa_produktu`, `producent`, `cena`) VALUES
 (`1`, `Jenga Classic`, `Hasbro`, `39,95`), 
 (`2`, `Scrabble Orginal`, `Mattel`, `115,99`),
 (`3`, `Monopoly`, `Hasbro`, `99,99`),
 (`4`, `Ego`, `Trefl`, `69,99`),
 (`5`, `Dixit`, `Rebel`, `145,00`),
 (`6`, `Tajniacy`, `Rebel`, `61,99`),
 (`7`, `Taboo`, `Hasbro`, `116,99`), 
 (`8`, `Splendor`, `Rebel`, `149,00`),
 (`9`, `Carcassonne`, `Bard`, `89,99`), 
 (`10`, `Wsiąść do Pociągu`, `Rebel`, `160,99`),
 (`11`, `Terraformacja Marsa`, `Rebel`, `150,00`), 
 (`12`, `Superfarmer`, `Granna`, `66,99`), 
 (`13`, `Orbis`, `Rebel`, `71,99`),
 (`14`, `Wyprawa do El Dorado`, `Rebel`, `71,99`), 
 (`15`, `Koncept`, `Rebel`, `110,69`);
 
 CREATE TABLE IF NOT EXISTS `klienci` (
  `idklienci` int NOT NULL AUTO_INCREMENT,
  `imie` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `miejsce_zamieszkania` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`idklienci`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `klienci` (`idklienci`, `imie`, `nazwisko`, `miejsce_zamieszkania`) VALUES
(`1`, `Katarzyna`, `Wilczek`, `Morąg`),
(`2`, `Zuzanna`, `Nowak`, `Poznań`),
(`3`, `Filip`, `Kowalski`, `Gdańsk`),
(`4`, `Piotrek`, `Wiśniewski`, `Ostróda`),
(`5`, `Adam`, `Wójcik`, `Łukta`),
(`6`, `Oliwia`, `Kowalczyk`, `Olsztyn`), 
(`7`, `Bartosz`, `Kamiński`, `Olsztyn`),
(`8`, `Aleksandara`, `Lewandowska`, `Warszawa`),
(`9`, `Łucja`, `Zielińska`, `Sopot`), 
(`10`, `Tymoteusz`, `Szymański`, `Elbląg`),
(`11`, `Lucjan`, `Woźniak`, `Malbork`),
(`12`, `Wiktoria`, `Król`, `Płock`),
(`13`, `Dawid`, `Olszewski`, `Toruń`);

CREATE TABLE IF NOT EXISTS `platność` (
  `idplatność` int NOT NULL AUTO_INCREMENT,
  `koszt` int NOT NULL,
  `data_płatności` date NOT NULL,
  `rodzaj_płatności` varchar(45) NOT NULL,
  PRIMARY KEY (`idplatnosci`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `platnosci` (`idplatność`, `koszt`, `data_platnosci`, `rodzaj_platnosci`) VALUES
(`1`, `116,99`, `10-12-2020`, `przy_odbiorze`),
(`2`, `115,99`, `02-01-2021`, `przelew`), 
(`3`, `309,99`, `05-01-2021`, `przelew`), 
(`4`, `110,69`, `10-01-2021`, `przy_odbiorze`),
(`5`, `39,95`, `06-01-2021`, `przy_odbiorze`), 
(`6`, `89,99`, `03-01-2021`, `przelew`),
(`7`, `66,99`, `03-01-2021`, `przelew`),
(`8`, `66,99`, `15-12-2020`, `przelew`),
(`9`, `61,99`, `06-01-2021`, `przelew`),
(`10`, `71,99`, `12-01-2021`, `przy_odbiorze`),
(`11`, `115,99`, `05-01-2021`, `przelew`),
(`12`, `69,99`, `21-12-2020`, `przy_odbiorze`),
(`13`, `160,99`, `10-01-2021`, `przelew`); 

CREATE TABLE IF NOT EXISTS `pracownicy` (
  `idpracownicy` int NOT NULL AUTO_INCREMENT,
  `imie` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `stanowisko` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`idpracownicy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `pracownicy` (`idpracownicy`, `imie`, `nazwisko`, `stanowisko`) VALUES
(`1`, `Krzysztof`, `Wojtowicz`, `Kierownik`),
(`2`, `Bartłomiej`, `Baj`, `Księgowy`), 
(`3`, `Dominik`, `Boguszewski`, `Ochroniarz`),
(`4`, `Bartosz`, `Górski`, `Ochroniarz`),
(`5`, `Tomasz`, `Chodura`, `Magazynier`),
(`6`, `Sebastian`, `Hejmo`, `Magazynier`),
(`7`, `Paweł`, `Cielecki`, `Magazynier`),
(`8`, `Romuald`, `Jabłkowski`, `Magazynier`),
(`9`, `Maciej`, `Damboń`, `Kasjer`),
(`10`, `Zygmunt`, `Filipowicz`, `Kasjer`),
(`11`, `Jakub`, `Dobrzański`, `Kasjer`), 
(`12`, `Kacper`, `Czekalski`, `Sprzątacz`); 

CREATE TABLE IF NOT EXISTS `zamowienia` (
  `idzamowienia` int NOT NULL AUTO_INCREMENT,
  `idklienta` int NOT NULL,
  `idgry_planszowe` int NOT NULL,
  `data_zamowienia` date NOT NULL,
  `status_zamowienia` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`idzamowienia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `zamowienia` (`idzamowienia`, `idklienta`, `idgryplanszowe`, `data_zamowienia`, `status_zamowienia`) VALUES
(`1`, `5`, `7`, `10-12-2020`, `dostarczono`),
(`2`, `9`, `2`, `02-01-2021`, `dostarczono`),
(`3`, `13`, `8`, `05-01-2021`, `dostarczono`), 
(`4`, `13`, `10`, `05-01-2021`, `dostarczono`),
(`5`, `1`, `15`, `10-01-2021`, `w_drodze`), 
(`6`, `8`, `1`, `06-01-2021`, `w_drodze`),
(`7`, `7`, `9`, `03-01-2021`, `dostarczono`), 
(`8`, `2`, `12`, `03-01-2021`, `dostarczono`),
(`9`, `11`, `12`, `15-12-2020`, `dostarczono`),
(`10`, `12`, `6`, `06-01-2021`, `w_drodze`), 
(`11`, `4`, `13`, `12-01-2021`, `w czasie realizacji`),
(`12`, `3`, `2`, `05-01-2021`, `dostarczono`),
(`13`, `10`, `4`, `21-12-2020`, `dostarczono`),
(`14`, `6`, `10`, `10-01-2021`, `w_drodze`); 

