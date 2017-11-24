create or replace PACKAGE                          pkg_evidence_products  AS 


  FUNCTION datorii_reprezentant(p_reprez companii.reprezentant_companie%TYPE)
     RETURN NUMBER;
  
  PROCEDURE vanzari_produse( p_data1 DATE, 
                             p_data2 DATE, 
                             p_rank NUMBER, 
                             p_descriere OUT produse.descriere%TYPE, 
                             p_cantitate OUT NUMBER);
  
END pkg_evidence_products;