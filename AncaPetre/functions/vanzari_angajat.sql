--1) aflati numarul de angajati care au avut tranzactii in perioada  01.01.2005 - 28.02.2005
CREATE OR REPLACE FUNCTION intern_ap.vanzari_angajat (data1 IN DATE, data2 IN DATE)
RETURN NUMBER AS 
v_nr   NUMBER;
BEGIN

SELECT COUNT( DISTINCT cod_vanzator) C INTO v_nr
FROM   intern_ap.tranzactii t
WHERE  t.data_comenzii BETWEEN data1 AND data2;

RETURN v_nr;
END vanzari_angajat;
/
