CREATE OR REPLACE PROCEDURE CL_THIRD_PRODUCT (P_START IN DATE,
                                              P_END IN DATE,
                                              P_NAME OUT produse.descriere%TYPE,
                                              P_CANTITATE OUT tranzactii.cantitatea%TYPE) 
IS 
BEGIN
  SELECT descriere, cantitate_vanduta INTO P_NAME, P_CANTITATE
  FROM (SELECT pr.cod_produs, pr.descriere, SUM(tr.cantitatea) * pr.pret vanzari, SUM(tr.cantitatea) cantitate_vanduta, RANK() OVER (ORDER BY SUM(tr.cantitatea) * pr.pret DESC) AS rang
      FROM tranzactii tr, produse pr
      WHERE pr.cod_produs = tr.cod_produs AND tr.DATA_COMENZII BETWEEN TO_DATE(P_START,'dd.mm.yyyy') AND P_END
      GROUP BY pr.cod_produs, pr.descriere, pr.pret)
  WHERE rang = 3;
  
DBMS_OUTPUT.PUT_LINE ('Produsul cautat este: '|| P_NAME || ', cantitate vanduta: '||P_CANTITATE);
END CL_THIRD_PRODUCT;