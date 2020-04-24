spool POLECENIA_DML.LIS

--testowanie wybranych ograniczen (insert, update, delete)

--zaklady
INSERT INTO zaklady
VALUES (1, 'ZAK£AD AUTOMATYKI', 'Badania dotycz¹ sterowania przemys³owego ze szczególnym uwzglêdnieniem algorytmów predykcyjnych, sterowania rozmytego, optymalizacji wielowarstwowej i sterowania pod nadzorem.');

INSERT INTO zaklady
VALUES (-1, 'ZAK£AD AUTOMATYKI', 'Badania dotycz¹ sterowania przemys³owego ze szczególnym uwzglêdnieniem algorytmów predykcyjnych, sterowania rozmytego, optymalizacji wielowarstwowej i sterowania pod nadzorem.');

INSERT INTO zaklady (id_zakladu, nazwa)
VALUES (10, 'Zak³ad informatyki stosowanej');

INSERT INTO zaklady (nazwa)
VALUES ('ZAK£AD INFORMATYKI STOSOWANEJ');

UPDATE zaklady
SET id_zakladu = 9
WHERE id_zakladu = 1;

DELETE FROM zaklady WHERE id_zakladu = 2;

--osoby
INSERT INTO osoby (id_osoby, nazwisko, imie, data_urodzenia, tytul_naukowy_opiekuna, id_zakladu_zatrudniajacego, czy_student, czy_pracownik)
VALUES (1, 'MAJCHRZAK', 'JAN', TO_DATE('8-lut-1965', 'DD-MON-YYYY'), 'Doktor', 1, 'N', 'T');

INSERT INTO osoby (id_osoby, nazwisko, imie, data_urodzenia, tytul_naukowy_opiekuna, id_zakladu_zatrudniajacego, czy_student, czy_pracownik)
VALUES (-1, 'MAJCHRZAK', 'JAN', TO_DATE('8-lut-1965', 'DD-MON-YYYY'), 'Doktor', 1, 'N', 'T');

INSERT INTO osoby (id_osoby, nazwisko, imie, data_urodzenia, tytul_naukowy_opiekuna, id_zakladu_zatrudniajacego, czy_student, czy_pracownik)
VALUES (20, 'Kowal', 'JAN', TO_DATE('8-lut-1965', 'DD-MON-YYYY'), 'Doktor', 1, 'N', 'T');

INSERT INTO osoby (id_osoby, nazwisko, imie, data_urodzenia, tytul_naukowy_opiekuna, id_zakladu_zatrudniajacego, czy_student, czy_pracownik)
VALUES (20, 'KOWAL', 'Jan', TO_DATE('8-lut-1965', 'DD-MON-YYYY'), 'Doktor', 1, 'N', 'T');

INSERT INTO osoby (id_osoby, nazwisko, imie, data_urodzenia, tytul_naukowy_opiekuna, id_zakladu_zatrudniajacego, czy_student, czy_pracownik)
VALUES (20, 'KOWAL', 'JAN', TO_DATE('8-lut-1965', 'DD-MON-YYYY'), 'Doktor', 1, 'A', 'T');

INSERT INTO osoby (id_osoby, nazwisko, imie, data_urodzenia, tytul_naukowy_opiekuna, id_zakladu_zatrudniajacego, czy_student, czy_pracownik)
VALUES (20, 'KOWAL', 'JAN', TO_DATE('8-lut-1965', 'DD-MON-YYYY'), 'Doktor', 1, 'N', 'A');

INSERT INTO osoby (id_osoby, nazwisko, imie, data_urodzenia, tytul_naukowy_opiekuna, czy_student, czy_pracownik, nr_albumu_studenta)
VALUES (20, 'KOWAL', 'JAN', TO_DATE('8-lut-1965', 'DD-MON-YYYY'), 'Doktor', 'N', 'T', 294455);

INSERT INTO osoby (id_osoby, nazwisko, imie, data_urodzenia, id_zakladu_zatrudniajacego, czy_student, czy_pracownik, nr_albumu_studenta)
VALUES (20, 'KOWAL', 'JAN', TO_DATE('8-lut-1965', 'DD-MON-YYYY'), 1, 'T', 'N', 294455);

INSERT INTO osoby (id_osoby, nazwisko, imie, data_urodzenia, tytul_naukowy_opiekuna, czy_student, czy_pracownik, nr_albumu_studenta)
VALUES (20, 'KOWAL', 'JAN', TO_DATE('8-lut-1965', 'DD-MON-YYYY'), 'Doktor', 'T', 'N', 294455);

INSERT INTO osoby (id_osoby, nazwisko, imie, data_urodzenia, czy_student, czy_pracownik)
VALUES (20, 'KOWAL', 'JAN', TO_DATE('8-lut-1965', 'DD-MON-YYYY'), 'T', 'N');

INSERT INTO osoby (id_osoby, nazwisko, imie, data_urodzenia, tytul_naukowy_opiekuna, czy_student, czy_pracownik, nr_albumu_studenta)
VALUES (20, 'KOWAL', 'JAN', TO_DATE('8-lut-1965', 'DD-MON-YYYY'), 'Doktor', 'T', 'N', 253142);

INSERT INTO osoby (id_osoby, nazwisko, imie, data_urodzenia, czy_student, czy_pracownik)
VALUES (20, 'KOWAL', 'JAN', TO_DATE('8-lut-1965', 'DD-MON-YYYY'), 'N', 'N');

INSERT INTO osoby (nazwisko, imie, data_urodzenia, czy_student, czy_pracownik, nr_albumu_studenta)
VALUES ('KOWAL', 'JAN', TO_DATE('8-lut-1995', 'DD-MON-YYYY'), 'T', 'N', '245566');

UPDATE osoby
SET id_zakladu_zatrudniajacego = 3
WHERE id_osoby = 1;

UPDATE osoby
SET id_osoby = 30
WHERE id_osoby = 1;

UPDATE osoby
SET nr_albumu_studenta = '273111'
WHERE id_osoby = 12;

UPDATE osoby
SET nr_albumu_studenta = '999999'
WHERE id_osoby = 12;

DELETE FROM osoby WHERE id_osoby = 2;

DELETE FROM osoby WHERE id_osoby = 8;

--tematy
INSERT INTO tematy (nr_tematu, temat, id_opiekuna)
VALUES (1, 'APLIKACJA DO GENERACJI GRAFÓW', 1);

INSERT INTO tematy (nr_tematu, temat, id_opiekuna)
VALUES (-1, 'APLIKACJA DO GENERACJI GRAFÓW', 1);

INSERT INTO tematy (nr_tematu, temat, id_opiekuna)
VALUES (10, 'Aplikacja do generacji grafów', 1);

INSERT INTO tematy (nr_tematu, temat, id_opiekuna)
VALUES (20, 'APLIKACJA DO GENERACJI GRAFÓW', 20);

INSERT INTO tematy (nr_tematu, temat, id_opiekuna)
VALUES (10, 'APLIKACJA DO GENERACJI GRAFÓW', 13);

INSERT INTO tematy (temat, id_opiekuna)
VALUES ('METODY WYKRYWANIA ZAK£ÓCEÑ W POZYCJONOWANIU GPS', 2);

UPDATE tematy
SET id_opiekuna = 2
WHERE nr_tematu = 1;

UPDATE tematy
SET id_opiekuna = 1
WHERE nr_tematu = 1;

UPDATE tematy
SET nr_tematu = 22
WHERE nr_tematu = 1;

DELETE FROM tematy WHERE nr_tematu = 2;

--preferencje
INSERT INTO preferencje
VAlUES (1, 1, 7);

INSERT INTO preferencje
VAlUES (1, 4, 7);

INSERT INTO preferencje
VAlUES (20, 2, 14);

INSERT INTO preferencje
VAlUES (1, 2, 1);

UPDATE preferencje
SET id_studenta = 11
WHERE id_studenta = 11;

UPDATE preferencje
SET id_studenta = 14
WHERE id_studenta = 11;

UPDATE preferencje
SET nr_wybranego_tematu = 5
WHERE id_studenta = 10 and nr_wybranego_tematu = 2;

DELETE FROM preferencje WHERE id_studenta = 7 and nr_wybranego_tematu = 4;

spool off