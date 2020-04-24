set echo on
set linesize 300
set pagesize 500
spool ZAPYTANIA.LIS

-- opiekunowie wraz z zakladami w ktorych pracuja
select osoby.imie, osoby.nazwisko, zaklady.nazwa 
    from osoby 
    join zaklady
    on osoby.id_zakladu_zatrudniajacego = zaklady.id_zakladu;

-- tematy prac dyplomowych wraz z opisami (tematow i zakladow)
select temat, tematy.opis as opis_tematu, zaklady.opis as opis_zakladu 
    from tematy
    join osoby 
    on tematy.id_opiekuna = osoby.id_osoby
        join zaklady 
        on osoby.id_zakladu_zatrudniajacego = zaklady.id_zakladu;

--liczba preferencji danego tematu jako najbardziej porzadanego (waga rowna 1)
select tematy.temat, count(tematy.temat)
    from tematy
    join preferencje 
    on tematy.nr_tematu = preferencje.nr_wybranego_tematu
    where preferencje.waga = 1
    group by tematy.temat;

--liczby preferencji zlozonych przez poszczegolnych studentow
select osoby.imie, osoby.nazwisko, osoby.nr_albumu_studenta, liczby_preferencji.l_pref as liczba_zlozonych_preferencji
    from osoby
    join (select count (*) as l_pref, osoby.id_osoby as id_os
        from osoby
        join preferencje
        on osoby.id_osoby = preferencje.id_studenta
        group by osoby.id_osoby) liczby_preferencji 
        on osoby.id_osoby = liczby_preferencji.id_os;

-- wybrane przez poszczegolnych studentow tematy wraz z wagami preferencji
select tematy.temat, osoby.imie, osoby.nazwisko, preferencje.waga
    from preferencje
    join osoby
    on preferencje.id_studenta = osoby.id_osoby
        join tematy 
        on preferencje.nr_wybranego_tematu = tematy.nr_tematu;

spool off