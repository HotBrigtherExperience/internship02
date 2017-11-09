--1) aflati numarul de angajati care au avut tranzactii in perioada  01.01.2005 - 28.02.2005
CREATE OR REPLACE FUNCTION VANZARI_ANGAJAT (data1 IN DATE, data2 IN DATE)
RETURN NUMBER AS 
v_nr   NUMBER;
BEGIN

SELECT COUNT( DISTINCT cod_vanzator) "Count" INTO v_nr
FROM   TRANZACTII
WHERE  data_comenzii BETWEEN data1 AND data2;

RETURN v_nr;
END VANZARI_ANGAJAT;

-- 2)aflati numele vanzatorului care a avut cele mai multe vanzari (tranzactii)
CREATE OR REPLACE FUNCTION VANZATOR
RETURN VARCHAR2 AS
v_nume    angajati.nume%TYPE;
v_prenume angajati.prenume%TYPE;
BEGIN

SELECT NUME, PRENUME INTO v_nume, v_prenume
FROM   ANGAJATI
WHERE
(SELECT cod_vanzator 
 FROM ( SELECT  cod_vanzator, 
                COUNT(cod_vanzator)
        FROM TRANZACTII
        GROUP BY cod_vanzator
        ORDER BY COUNT(cod_vanzator) DESC ) 
 WHERE ROWNUM = 1 ) = ANGAJATI.COD_ANGAJAT;

RETURN v_nume||' '||v_prenume;
END VANZATOR;
