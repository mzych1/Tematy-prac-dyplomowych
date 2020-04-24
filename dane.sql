-- zaklady
INSERT INTO zaklady
VALUES (1, 'ZAK�AD AUTOMATYKI', 'Badania dotycz� sterowania przemys�owego ze szczeg�lnym uwzgl�dnieniem algorytm�w predykcyjnych, sterowania rozmytego, optymalizacji wielowarstwowej i sterowania pod nadzorem.');

INSERT INTO zaklady
VALUES (2, 'ZAK�AD IN�YNIERII OPROGRAMOWANIA', 'Zakres bada� obejmuje procesy projektowe, metody analizy, projektowania i oceny jako�ci oprogramowania oraz metody prowadzenia audytu informatycznego.');

INSERT INTO zaklady (ID_ZAKLADU, NAZWA)
VALUES (3, 'ZAK�AD BADA� OPERACYJNYCH I SYSTEMOWYCH');

INSERT INTO zaklady (ID_ZAKLADU, NAZWA)
VALUES (4, 'ZAK�AD STEROWANIA SYSTEM�W');

--pracownicy
INSERT INTO osoby (id_osoby, nazwisko, imie, data_urodzenia, tytul_naukowy_opiekuna, id_zakladu_zatrudniajacego, czy_student, czy_pracownik)
VALUES (1, 'MAJCHRZAK', 'JAN', TO_DATE('8-sty-1955', 'DD-MON-YYYY'), 'Profesor zwyczajny', 1, 'N', 'T');

INSERT INTO osoby (id_osoby, nazwisko, imie, data_urodzenia, tytul_naukowy_opiekuna, id_zakladu_zatrudniajacego, czy_student, czy_pracownik)
VALUES (2, 'ZIELI�SKI', 'IGOR', TO_DATE('13-maj-1982', 'DD-MON-YYYY'), 'Magister', 2, 'N', 'T');

INSERT INTO osoby (id_osoby, nazwisko, imie, data_urodzenia, tytul_naukowy_opiekuna, id_zakladu_zatrudniajacego, czy_student, czy_pracownik)
VALUES (3, 'CZAJKA', 'JERZY', TO_DATE('9-pa�-1963', 'DD-MON-YYYY'), 'Profesor zwyczajny', 3, 'N', 'T');

INSERT INTO osoby (id_osoby, nazwisko, imie, data_urodzenia, tytul_naukowy_opiekuna, id_zakladu_zatrudniajacego, czy_student, czy_pracownik)
VALUES (4, 'MICHALAK', 'WERONIKA', TO_DATE('27-gru-1984', 'DD-MON-YYYY'), 'Doktor', 4, 'N', 'T');

--studiujacy pracownicy
INSERT INTO osoby (id_osoby, nazwisko, imie, data_urodzenia, nr_albumu_studenta, tytul_naukowy_opiekuna, id_zakladu_zatrudniajacego, czy_student, czy_pracownik)
VALUES (5, 'NOWAK', 'ANNA', TO_DATE('12-lis-1992', 'DD-MON-YYYY'), '263156', 'Magister', 2, 'T', 'T');

INSERT INTO osoby (id_osoby, nazwisko, imie, data_urodzenia, nr_albumu_studenta, tytul_naukowy_opiekuna, id_zakladu_zatrudniajacego, czy_student, czy_pracownik)
VALUES (6, 'SOSNOWSKI', 'MATEUSZ', TO_DATE('24-mar-1991', 'DD-MON-YYYY'), '253142', 'Magister', 3, 'T', 'T');

--studenci
INSERT INTO osoby (id_osoby, nazwisko, imie, data_urodzenia, nr_albumu_studenta, czy_student, czy_pracownik)
VALUES (7, 'CZARNECKA', 'ALEKSANDRA', TO_DATE('15-lut-1998', 'DD-MON-YYYY'), '293112', 'T', 'N');

INSERT INTO osoby (id_osoby, nazwisko, imie, data_urodzenia, nr_albumu_studenta, czy_student, czy_pracownik)
VALUES (8, 'KUCHARSKI', 'MIKO�AJ', TO_DATE('7-maj-1997', 'DD-MON-YYYY'), '283123', 'T', 'N');

INSERT INTO osoby (id_osoby, nazwisko, imie, data_urodzenia, nr_albumu_studenta, czy_student, czy_pracownik)
VALUES (9, 'KOZ�OWSKI', 'ALEKSANDER', TO_DATE('29-cze-1998', 'DD-MON-YYYY'), '293187', 'T', 'N');

INSERT INTO osoby (id_osoby, nazwisko, imie, data_urodzenia, nr_albumu_studenta, czy_student, czy_pracownik)
VALUES (10, 'PAWLAK', 'ADAM', TO_DATE('11-lip-1996', 'DD-MON-YYYY'), '273188', 'T', 'N');

INSERT INTO osoby (id_osoby, nazwisko, imie, data_urodzenia, nr_albumu_studenta, czy_student, czy_pracownik)
VALUES (11, 'RUTKOWSKA', 'ALICJA', TO_DATE('21-mar-1997', 'DD-MON-YYYY'), '283191', 'T', 'N');

INSERT INTO osoby (id_osoby, nazwisko, imie, data_urodzenia, nr_albumu_studenta, czy_student, czy_pracownik)
VALUES (12, 'KUJAWA', 'TOMASZ', TO_DATE('21-lis-1995', 'DD-MON-YYYY'), '273111', 'T', 'N');

INSERT INTO osoby (id_osoby, nazwisko, imie, data_urodzenia, nr_albumu_studenta, czy_student, czy_pracownik)
VALUES (13, 'SZYMCZAK', 'MICHA�', TO_DATE('18-maj-1997', 'DD-MON-YYYY'), '283165', 'T', 'N');

INSERT INTO osoby (id_osoby, nazwisko, imie, data_urodzenia, nr_albumu_studenta, czy_student, czy_pracownik)
VALUES (14, 'WOJCIECHOWSKA', 'ZUZANNA', TO_DATE('7-sie-1998', 'DD-MON-YYYY'), '293177', 'T', 'N');

--tematy
INSERT INTO tematy
VALUES (1, 'PLANOWANIE ZADA� ROBOT�W', 'Algorytmy sztucznej inteligencji w planowaniu zada� robot�w', 1);

INSERT INTO tematy
VALUES (2, 'PROCES WYKONANIA PROGRAMU FUNKCYJNEGO', 'Zadanie polega na wizualizacji procesu wykonania programu funkcyjnego.', 2);

INSERT INTO tematy
VALUES (3, 'SYSTEMY RYNKOWE', 'Zadanie polega na opracowaniu �rodowiska do projektowania system�w rynkowych.', 3);

INSERT INTO tematy
VALUES (4, '�CIE�KI PO��CZE� W SIECIACH OPTYCZNYCH', 'Algorytmy wyznaczania �cie�ek po��cze� w sieciach optycznych', 3);

INSERT INTO tematy
VALUES (5, 'PLANOWANIE TRENINGU', 'Modelowanie wytrzyma�o�ci fizycznej do planowania treningu', 4);

INSERT INTO tematy
VALUES (6, 'SERWOMECHANIZM LABORATORYJNY', 'Modelowanie, identyfikacja, regulacja oraz wizualizacja', 4);

INSERT INTO tematy
VALUES (7, 'ZWINNE PROJEKTY INFORMATYCZNE', 'Aplikacja doradzaj�ca zespo�om realizuj�cym zwinne projekty informatyczne', 5);

INSERT INTO tematy (nr_tematu, temat, id_opiekuna)
VALUES (8, 'APLIKACJA DO GENERACJI WYBRANYCH KLAS GRAF�W', 6);

--preferencje 
INSERT INTO preferencje
VAlUES (1, 1, 7);

INSERT INTO preferencje 
VAlUES (2, 2, 7);

INSERT INTO preferencje 
VAlUES (4, 3, 7);

INSERT INTO preferencje 
VAlUES (3, 1, 8);

INSERT INTO preferencje 
VAlUES (1, 2, 8);

INSERT INTO preferencje 
VAlUES (7, 1, 9);

INSERT INTO preferencje 
VAlUES (8, 2, 9);

INSERT INTO preferencje 
VAlUES (2, 1, 10);

INSERT INTO preferencje 
VAlUES (8, 1, 11);

INSERT INTO preferencje 
VAlUES (3, 2, 11);

INSERT INTO preferencje 
VAlUES (8, 1, 12);

INSERT INTO preferencje 
VAlUES (7, 2, 12);

INSERT INTO preferencje 
VAlUES (1, 3, 12);

INSERT INTO preferencje 
VAlUES (5, 1, 6);

INSERT INTO preferencje 
VAlUES (6, 2, 6);

commit;