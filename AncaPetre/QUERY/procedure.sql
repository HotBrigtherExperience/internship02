--create table LOGS

DROP TABLE LOGS;
CREATE TABLE LOGS
(
    ID NUMBER(3,0) PRIMARY KEY, 
	OBJECT_NAME    VARCHAR2(50), 
	CODE           VARCHAR2(50), 
	MESSAGE        VARCHAR2(150)
    
);
 
--create segventa 

DROP SEQUENCE SEQUENCE_LOGS;
CREATE SEQUENCE SEQUENCE_LOGS  MINVALUE 1 MAXVALUE 1000 INCREMENT BY 1 START WITH 101 CACHE 100 NOORDER  NOCYCLE ;

--3)grupati comenzile (tabela tranzactii) efectuate in anul 2005 in functie de produse

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
GROUP BY PRODUSE.COD_PRODUS, PRODUSE.DESCRIERE
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
--create AUTONOMOUS_TRANSACTION
CREATE OR REPLACE PROCEDURE WRITE_LOGS (p_name IN VARCHAR2,
                                        p_code IN VARCHAR2,
                                        p_message IN VARCHAR2)
IS 
PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
INSERT INTO LOGS
    VALUES (SEQUENCE_LOGS.NEXTVAL,
            p_name,
            p_code,
            p_message
            );
COMMIT;
EXCEPTION 
WHEN OTHERS 
THEN ROLLBACK;
END;
