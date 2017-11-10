create or replace PACKAGE pkg_evidence_products
AS 

PROCEDURE CL_THIRD_PRODUCT(P_START IN DATE,
                           P_END IN DATE,
                           P_NAME OUT produse.descriere%TYPE,
                           P_CANTITATE OUT tranzactii.cantitatea%TYPE);
                           
 FUNCTION CL_TOTAL_DATORII (P_REPR_COMP ANGAJATI.COD_ANGAJAT%TYPE) RETURN NUMBER;

END pkg_evidence_products;

create or replace PACKAGE BODY pkg_evidence_products
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

FUNCTION CL_TOTAL_DATORII (P_REPR_COMP ANGAJATI.COD_ANGAJAT%TYPE)
  RETURN NUMBER 
  IS 
  V_DATORIE NUMBER;
  BEGIN
    SELECT  SUM(cp.DATORIA) INTO v_datorie
    FROM companii cp, ANGAJATI AG
    WHERE CP.REPREZENTANT_COMPANIE = AG.COD_ANGAJAT AND AG.cod_angajat = P_REPR_COMP
    GROUP BY AG.COD_ANGAJAT;
    
    RETURN V_DATORIE;
END CL_TOTAL_DATORII;

END pkg_evidence_products;