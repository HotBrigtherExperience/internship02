CREATE OR REPLACE PACKAGE BODY intern_ap.pkg_evidence_products  IS

C_PROCEDURE_NAME VARCHAR2(30) := 'VANZARI_PRODUSE';
v_rank NUMBER; 

FUNCTION datorii_reprezntant( p_reprez companii.compania%TYPE) 
RETURN NUMBER IS

p_datorie NUMBER;

BEGIN 
   SELECT t_datorie INTO  p_datorie
   FROM
   (
       SELECT companii.REPREZENTANT_COMPANIE, SUM(companii.datoria) t_datorie
       FROM companii
       GROUP BY companii.REPREZENTANT_COMPANIE)
   WHERE REPREZENTANT_COMPANIE = p_reprez;
RETURN p_datorie;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
    RETURN NULL;
END datorii_reprezntant; 
 
PROCEDURE vanzari_produse( p_data1 DATE,
                           p_data2 DATE, 
                           p_rank NUMBER, 
                           p_descriere OUT produse.descriere%TYPE, 
                           p_cantitate OUT NUMBER)
IS

BEGIN 
    SELECT des, total INTO  p_descriere, p_cantitate
    FROM
    (
        SELECT produse.descriere des, tab1.cantitate*produse.pret total,
        RANK() OVER (ORDER BY tab1.cantitate*produse.pret  DESC) rankt
        FROM produse
        JOIN
            (SELECT tr.cod_produs, SUM(cantitatea) cantitate
              FROM tranzactii tr
              WHERE DATA_COMENZII BETWEEN p_data1 AND p_data2
              GROUP BY tr.cod_produs
              ORDER BY SUM(cantitatea) DESC) tab1
        ON (tab1.cod_produs = produse.cod_produs))
    WHERE rankt=p_rank;

END vanzari_produse; 

END pkg_evidence_products;
/
