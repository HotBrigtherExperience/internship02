-- aflati numarul de angajati care au avut tranzactii in perioada  01.01.2005 - 28.02.2005
SELECT  COUNT(*) "Count"
    FROM TRANZACTII
        WHERE data_comenzii> TO_DATE('01-01-2005','DD-MM-YYYY') AND data_comenzii <TO_DATE(' 28-02-2005','DD-MM-YYYY');
  
-- aflati numele vanzatorului care a avut cele mai multe vanzari (tranzactii)
SELECT NUME||' '||PRENUME 
    FROM ANGAJATI 
        WHERE
            (SELECT cod_vanzator 
                FROM (SELECT  cod_vanzator, COUNT(cod_vanzator) "vanzari"
                        FROM TRANZACTII
                            GROUP BY cod_vanzator
                                ORDER BY COUNT(cod_vanzator) DESC) 
                WHERE ROWNUM =1)=ANGAJATI.COD_ANGAJAT;

--grupati comenzile (tabela tranzactii) efectuate in anul 2005 in functie de produse
--(afisati produsul, codul acestuia si ce cate ori a fost vandut, atentie nu afisati o suma a cantitatii vandute ci doar de cate ori a fost vandut)  

--REVIN CU REZOLVAREA              