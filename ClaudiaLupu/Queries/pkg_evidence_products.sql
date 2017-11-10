create or replace PACKAGE pkg_evidence_products
AS 

PROCEDURE CL_THIRD_PRODUCT(P_START IN DATE,
                           P_END IN DATE,
                           P_NAME OUT produse.descriere%TYPE,
                           P_CANTITATE OUT tranzactii.cantitatea%TYPE);
                           
 FUNCTION CL_TOTAL_DATORII (P_REPR_COMP ANGAJATI.COD_ANGAJAT%TYPE) RETURN NUMBER;

END pkg_evidence_products;

CREATE OR REPLACE PACKAGE BODY pkg_evidence_products
IS

PROCEDURE CL_THIRD_PRODUCT (p_start IN DATE,
                            p_end IN DATE,
                            p_name OUT produse.descriere%TYPE,
                            p_cantitate OUT tranzactii.cantitatea%TYPE) 
  IS 
  BEGIN
    SELECT descriere, cantitate_vanduta INTO p_name, p_cantitate
    FROM (SELECT pr.cod_produs, pr.descriere, SUM(tr.cantitatea) * pr.pret vanzari, SUM(tr.cantitatea) cantitate_vanduta, RANK() OVER (ORDER BY SUM(tr.cantitatea) * pr.pret DESC) AS rang
          FROM tranzactii tr, produse pr
          WHERE pr.cod_produs = tr.cod_produs AND tr.data_comenzii BETWEEN p_start AND p_end
          GROUP BY pr.cod_produs, pr.descriere, pr.pret)
    WHERE rang = 3;
  
    DBMS_OUTPUT.PUT_LINE ('Produsul cautat este: '|| p_name || ', cantitate vanduta: '||p_cantitate);
END CL_THIRD_PRODUCT;

FUNCTION CL_TOTAL_DATORII (p_repr_comp angajati.cod_angajat%TYPE)
  RETURN NUMBER 
  IS 
  v_datorie NUMBER;
  BEGIN
    SELECT  SUM(cp.datoria) INTO v_datorie
    FROM companii cp, ANGAJATI AG
    WHERE cp.reprezentant_companie = ag.cod_angajat AND ag.cod_angajat = p_repr_comp
    GROUP BY ag.cod_angajat;
    
    RETURN v_datorie;
END CL_TOTAL_DATORII;

END pkg_evidence_products; --package body end