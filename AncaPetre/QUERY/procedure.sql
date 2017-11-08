--3)grupati comenzile (tabela tranzactii) efectuate in anul 2005 in functie de produse
CREATE OR REPLACE PROCEDURE GRUPARE_COMENZI IS

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
GROUP BY PRODUSE.COD_PRODUS, PRODUSE.DESCRIERE
ORDER BY  PRODUSE.COD_PRODUS;


BEGIN
    OPEN EMP_CURSOR (2005);
    LOOP
        FETCH EMP_CURSOR INTO V_COD_PRODUSE, v_descriere, v_numar_vanzari;
        EXIT WHEN EMP_CURSOR%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE(V_COD_PRODUSE || ' ' || v_descriere || ' '|| TO_CHAR( v_numar_vanzari));
    END LOOP;
    
    CLOSE EMP_CURSOR;

    DBMS_OUTPUT.PUT_LINE('');

    OPEN EMP_CURSOR (2004);
    LOOP
        FETCH EMP_CURSOR INTO V_COD_PRODUSE, v_descriere, v_numar_vanzari;
        EXIT WHEN EMP_CURSOR%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(V_COD_PRODUSE || ' ' || v_descriere || ' '|| TO_CHAR( v_numar_vanzari));

        END LOOP;
    
    CLOSE EMP_CURSOR;

EXCEPTION
    WHEN OTHERS 
        THEN
            OBJECT_NAME := 'AFISARE_DMBS' ;
            CODE :=SQLCODE;
            MESSAGE := SQLERRM(SQLCODE);

            INSERT 
            INTO LOGS 
            VALUES (SEQUENCE_LOGS.NEXTVAL, OBJECT_NAME, CODE, MESSAGE);
COMMIT;

END GRUPARE_COMENZI;