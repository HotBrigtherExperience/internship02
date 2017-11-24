SET SERVEROUTPUT ON
DECLARE
    record_val      VARCHAR(200);
    nr_catitate1    NUMBER;
    nr_catitate2    NUMBER;
BEGIN
  intern_ap.PKG_EVIDENCE_PRODUCTS.vanzari_produse(p_data1     =>  TO_DATE('1.1.2005','dd/mm/yyyy'),
                                                  p_data2     =>  TO_DATE('28.2.2005','dd/mm/yyyy'),
                                                  p_rank      =>  3, 
                                                  p_descriere =>  record_val, 
                                                  p_cantitate =>  nr_catitate1
                                                  );
                                                                                                        
   DBMS_OUTPUT.PUT_LINE('Al 3 Produs cu vanzari maxime: '|| ' ' ||record_val ||' '||' in cantitatea: ' ||nr_catitate1);
    
   nr_catitate2 := intern_ap.PKG_EVIDENCE_PRODUCTS.datorii_reprezentant('NV');
    
  DBMS_OUTPUT.PUT_LINE('Datoriile reprezntantului NV sunt: '|| ' ' ||nr_catitate2);
END;
/
