--3)grupati comenzile (tabela tranzactii) efectuate in anul 2005 in functie de produse

CREATE OR REPLACE PROCEDURE intern_ap.grupare_comenzi (p_an IN NUMBER) IS

C_PROCEDURE_NAME VARCHAR2(30) := 'grupare_comenzi';

v_code              VARCHAR2(5);
--v_message           VARCHAR2(512);
v_cod_produse       produse.cod_produs%TYPE;
v_descriere         produse.descriere%TYPE;
v_numar_vanzari     produse.cod_produs%TYPE;

CURSOR emp_cursor (an NUMBER) 
IS 
SELECT p.cod_produs, 
       p.descriere, 
       COUNT(t.cod_produs) numar_vanzari 
FROM produse p
LEFT JOIN tranzactii t ON (p.cod_produs = t.cod_produs)
                        AND TO_CHAR(t.data_comenzii,'YYYY') = TO_CHAR(an)
GROUP BY p.cod_produs, p.descriere
ORDER BY  p.cod_produs;


BEGIN
    OPEN emp_cursor (p_an);
    LOOP
        FETCH emp_cursor INTO v_cod_produse, v_descriere, v_numar_vanzari;
        EXIT WHEN emp_cursor%NOTFOUND;
        v_code := 'qqqqqqqqqq';
        DBMS_OUTPUT.PUT_LINE(v_cod_produse || ' ' || v_descriere || ' '|| TO_CHAR( v_numar_vanzari));
    END LOOP;
    
    CLOSE emp_cursor;

EXCEPTION
    WHEN OTHERS 
        THEN
        --v_code := SQLCODE;
        --v_message := SQLERRM(SQLCODE);
        intern_ap.write_logs(C_PROCEDURE_NAME, SQLCODE, SQLERRM);
        RAISE;

END grupare_comenzi;
/
