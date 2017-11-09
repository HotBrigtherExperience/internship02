--SET SERVEROUTPUT ON
--1) test: aflati numarul de angajati care au avut tranzactii in perioada  01.01.2005 - 28.02.2005
-- 2)test: aflati numele vanzatorului care a avut cele mai multe vanzari (tranzactii)
DECLARE
    C_TEST VARCHAR2(20);
    v_test VARCHAR2(100);
BEGIN
DBMS_OUTPUT.PUT_LINE('Nr. tranzactii angajat:' ||' '||  intern_ap.vanzari_angajat( TO_DATE('01-01-2005','DD-MM-YYYY'),  TO_DATE('28-02-2005','DD-MM-YYYY')));
DBMS_OUTPUT.PUT_LINE('Nume angajat cu tranzactii maxime:' ||' '|| intern_ap.vanzator());

intern_ap.grupare_comenzi(2005);

END;
/
SELECT * FROM logs;
