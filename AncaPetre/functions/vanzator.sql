-- 2)aflati numele vanzatorului care a avut cele mai multe vanzari (tranzactii)
CREATE OR REPLACE FUNCTION intern_ap.vanzator
RETURN VARCHAR2 AS
v_nume    angajati.nume%TYPE;
v_prenume angajati.prenume%TYPE;
BEGIN

SELECT a.nume, a.prenume INTO v_nume, v_prenume
FROM   angajati a
WHERE
(SELECT t.cod_vanzator 
 FROM ( SELECT  t.cod_vanzator, 
                COUNT(t.cod_vanzator)
        FROM tranzactii t
        GROUP BY t.cod_vanzator
        ORDER BY COUNT(t.cod_vanzator) DESC ) 
 WHERE ROWNUM = 1 ) = a.cod_angajat;

RETURN v_nume||' '||v_prenume;
END vanzator;
/
