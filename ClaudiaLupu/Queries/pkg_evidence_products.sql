CREATE OR REPLACE PACKAGE CL_TEST 
AS 

PROCEDURE CL_THIRD_PRODUCT(P_START IN DATE,
                           P_END IN DATE,
                           P_NAME OUT produse.descriere%TYPE,
                           P_CANTITATE OUT tranzactii.cantitatea%TYPE);
 
FUNCTION CL_TOTAL_DATORII (P_COD_COMP COMPANII.COD_COMPANIE%TYPE) RETURN NUMBER;

END CL_TEST;


CREATE OR REPLACE PACKAGE BODY CL_TEST 
IS

PROCEDURE CL_THIRD_PRODUCT (P_START IN DATE,
                            P_END IN DATE,
                            P_NAME OUT produse.descriere%TYPE,
                            P_CANTITATE OUT tranzactii.cantitatea%TYPE) 
  IS 
  BEGIN
    SELECT descriere, cantitate_vanduta INTO P_NAME, P_CANTITATE
    FROM (SELECT pr.cod_produs, pr.descriere, SUM(tr.cantitatea) * pr.pret vanzari, SUM(tr.cantitatea) cantitate_vanduta, RANK() OVER (ORDER BY SUM(tr.cantitatea) * pr.pret DESC) AS rang
          FROM tranzactii tr, produse pr
          WHERE pr.cod_produs = tr.cod_produs AND tr.DATA_COMENZII BETWEEN P_START AND P_END
          GROUP BY pr.cod_produs, pr.descriere, pr.pret)
    WHERE rang = 3;
  
    DBMS_OUTPUT.PUT_LINE ('Produsul cautat este: '|| P_NAME || ', cantitate vanduta: '||P_CANTITATE);
END CL_THIRD_PRODUCT;


FUNCTION CL_TOTAL_DATORII (P_COD_COMP COMPANII.COD_COMPANIE%TYPE)
  RETURN NUMBER 
  IS 
  V_DATORIE number;
  BEGIN
    SELECT  SUM(cp.DATORIA) INTO v_datorie
    FROM companii cp, tranzactii tr
    WHERE tr.cod_client = cp.cod_companie AND cp.cod_companie = P_COD_COMP
    GROUP BY cod_companie;
  
   RETURN V_DATORIE;
END CL_TOTAL_DATORII;


END CL_TEST; --package body end