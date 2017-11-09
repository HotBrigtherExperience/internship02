SET SERVEROUTPUT ON
--1) test: aflati numarul de angajati care au avut tranzactii in perioada  01.01.2005 - 28.02.2005
--2)test: aflati numele vanzatorului care a avut cele mai multe vanzari (tranzactii)
BEGIN
DBMS_OUTPUT.PUT_LINE('Nr. tranzactii angajat:' ||' '||  VANZARI_ANGAJAT( TO_DATE('01-01-2005','DD-MM-YYYY'),  TO_DATE('28-02-2005','DD-MM-YYYY')));
DBMS_OUTPUT.PUT_LINE('Nume angajat cu tranzactii maxime:' ||' '|| VANZATOR());
END;
/
--3) test: procedure exception
EXECUTE GRUPARE_COMENZI(2005);

CREATE OR REPLACE PROCEDURE GRUPARE_COMENZI (p_an IN NUMBER) IS

code            VARCHAR2(50);
message         VARCHAR2(512);
object_name     VARCHAR2(50);
v_cod_produse   produse.cod_produs%TYPE;
v_descriere     produse.descriere%TYPE;
v_numar_vanzari produse.cod_produs%TYPE;

CURSOR EMP_CURSOR (AN NUMBER) 
IS 
SELECT PRODUSE.COD_PRODUS, 
       PRODUSE.DESCRIERE, 
       COUNT(TRANZACTII.COD_PRODUS) NUMAR_VANZARI 
FROM PRODUSE
LEFT JOIN TRANZACTII ON (PRODUSE.COD_PRODUS=TRANZACTII.COD_PRODUS)
                        AND TO_CHAR(TRANZACTII.DATA_COMENZII,'YYYY') = TO_CHAR(AN)
--GROUP BY PRODUSE.COD_PRODUS, PRODUSE.DESCRIERE
ORDER BY  PRODUSE.COD_PRODUS;


BEGIN
    OPEN EMP_CURSOR (p_an);
    LOOP
        FETCH EMP_CURSOR INTO V_COD_PRODUSE, v_descriere, v_numar_vanzari;
        EXIT WHEN EMP_CURSOR%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE(V_COD_PRODUSE || ' ' || v_descriere || ' '|| TO_CHAR( v_numar_vanzari));
    END LOOP;
    
    CLOSE EMP_CURSOR;

EXCEPTION
    WHEN OTHERS 
        THEN
        object_name := 'GRUPARE_COMENZI' ;
        code :=SQLCODE;
        message :=SQLERRM(SQLCODE);
        WRITE_LOGS(object_name, code, message);
    ROLLBACK;
END GRUPARE_COMENZI;
/
--EXECUTE PROCEDURE 
EXECUTE GRUPARE_COMENZI(2005);

SELECT * FROM LOGS;