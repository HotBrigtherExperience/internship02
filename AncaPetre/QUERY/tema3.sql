--1) aflati numarul de angajati care au avut tranzactii in perioada  01.01.2005 - 28.02.2005
SELECT  COUNT(*) "Count"
    FROM TRANZACTII
        WHERE data_comenzii> TO_DATE('01-01-2005','DD-MM-YYYY') AND data_comenzii <TO_DATE(' 28-02-2005','DD-MM-YYYY');

-- 2)aflati numele vanzatorului care a avut cele mai multe vanzari (tranzactii)
SELECT NUME||' '||PRENUME
    FROM ANGAJATI
        WHERE
            (SELECT cod_vanzator 
                FROM (SELECT  cod_vanzator, COUNT(cod_vanzator) "vanzari"
                        FROM TRANZACTII
                            GROUP BY cod_vanzator
                                ORDER BY COUNT(cod_vanzator) DESC) 
                WHERE ROWNUM =1)=ANGAJATI.COD_ANGAJAT;

--3)grupati comenzile (tabela tranzactii) efectuate in anul 2005 in functie de produse
SELECT PRODUSE.COD_PRODUS, PRODUSE.DESCRIERE, COUNT(TRANZACTII.COD_PRODUS)
    FROM PRODUSE
        LEFT JOIN TRANZACTII ON (PRODUSE.COD_PRODUS=TRANZACTII.COD_PRODUS)
            AND TO_CHAR(TRANZACTII.DATA_COMENZII,'YYYY')=TO_CHAR(2005)
                GROUP BY PRODUSE.COD_PRODUS, PRODUSE.DESCRIERE
                    ORDER BY  PRODUSE.COD_PRODUS;   

--3)PRIN PROCEDURA  

create or replace PROCEDURE GRUPARE_COMENZI IS

    CODE VARCHAR2(50);
    MESSAGE VARCHAR2(512);
    OBJECT_NAME VARCHAR2(50);

CURSOR EMP_CURSOR IS SELECT PRODUSE.COD_PRODUS, PRODUSE.DESCRIERE, COUNT(TRANZACTII.COD_PRODUS) NUMAR_VANZARI 
                                FROM PRODUSE
                                   LEFT JOIN TRANZACTII ON (PRODUSE.COD_PRODUS=TRANZACTII.COD_PRODUS)
                                      AND TO_CHAR(TRANZACTII.DATA_COMENZII,'YYYY')=TO_CHAR(2005)
                                         group by PRODUSE.COD_PRODUS, PRODUSE.DESCRIERE
                                             ORDER BY  PRODUSE.COD_PRODUS;


BEGIN

    FOR REC IN EMP_CURSOR LOOP
        DBMS_OUTPUT.PUT_LINE(REC.COD_PRODUS || ' ' || REC.DESCRIERE || ' '|| TO_CHAR(REC.NUMAR_VANZARI));
    END LOOP;
COMMIT;

EXCEPTION
    WHEN OTHERS THEN

      OBJECT_NAME := 'AFISARE_DMBS' ;
      CODE :=SQLCODE;
      MESSAGE := SQLERRM(SQLCODE);

    INSERT INTO LOGS VALUES (SEQUENCE_LOGS.NEXTVAL, OBJECT_NAME, CODE, MESSAGE);

END GRUPARE_COMENZI;
