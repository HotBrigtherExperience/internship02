create or replace PACKAGE BODY                                                                                                                                                                                                                                                                                                                                                                                                                                                                              pkg_evidence_products  IS

C_PROCEDURE_NAME VARCHAR2(30) := 'VANZARI_PRODUSE';
v_rank NUMBER; 
sql_string1 varchar2(32700);
sql_string2 varchar2(32700);
FUNCTION datorii_reprezentant( p_reprez companii.reprezentant_companie%TYPE) 
RETURN NUMBER
IS
p_datorie NUMBER;
BEGIN 

sql_string1 := ' SELECT suma_datorii
                FROM (SELECT companii.REPREZENTANT_COMPANIE,
                            SUM(companii.datoria) suma_datorii
                     FROM companii
                    GROUP BY companii.REPREZENTANT_COMPANIE)
                 WHERE REPREZENTANT_COMPANIE = :nr' ;

EXECUTE IMMEDIATE sql_string1 INTO p_datorie USING p_reprez;
RETURN p_datorie;
 
EXCEPTION
    WHEN NO_DATA_FOUND THEN
    RETURN 0;
END datorii_reprezentant; 
 
PROCEDURE vanzari_produse( p_data1 DATE,
                           p_data2 DATE, 
                           p_rank NUMBER, 
                           p_descriere OUT produse.descriere%TYPE, 
                           p_cantitate OUT NUMBER)
IS

BEGIN 
  sql_string2 := 'SELECT des, total
                 FROM ( SELECT produse.descriere des,
                              tab1.cantitate * produse.pret total,
                              RANK() OVER (ORDER BY tab1.cantitate*produse.pret  DESC) rankt
                        FROM produse
                       JOIN (SELECT tr.cod_produs,
                              SUM(cantitatea) cantitate
                              FROM tranzactii tr
                              WHERE DATA_COMENZII BETWEEN :p_data_begin  AND :p_data_end
                              GROUP BY tr.cod_produs
                              ORDER BY SUM(cantitatea) DESC) tab1
                       ON (tab1.cod_produs = produse.cod_produs))
                 WHERE rankt = :rang ';
                  
  EXECUTE IMMEDIATE sql_string2 INTO p_descriere, p_cantitate USING p_data1, p_data2, p_rank;

END vanzari_produse; 

END pkg_evidence_products;