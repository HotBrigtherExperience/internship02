CREATE OR REPLACE PACKAGE intern_ap.pkg_evidence_products  AS 

--SUBTYPE p_datorie IS NUMBER;

  FUNCTION datori(p_reprez companii.compania%TYPE)
     RETURN NUMBER;
  
  PROCEDURE vanzari_produse( p_data1 DATE, 
                             p_data2 DATE, 
                             p_rank NUMBER, 
                             p_descriere OUT produse.descriere%TYPE, 
                             p_cantitate OUT NUMBER);
  
END pkg_evidence_products;
/

