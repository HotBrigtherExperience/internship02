SET SERVEROUTPUT ON
DECLARE
record_val varchar(200);
nr_catitate1 number;
nr_catitate2 number;
 BEGIN
intern_ap.PKG_EVIDENCE_PRODUCTS.vanzari_produse(to_date('1.1.2005','dd/mm/yyyy'),to_date('28.2.2005','dd/mm/yyyy'),3, record_val, nr_catitate1);
DBMS_OUTPUT.PUT_LINE('Al 3 Produs cu vanzari maxime: '|| ' ' ||record_val ||' '||' in cantitatea: ' ||nr_catitate1);
nr_catitate2 := intern_ap.PKG_EVIDENCE_PRODUCTS.datori('NV');
DBMS_OUTPUT.PUT_LINE('Datoriile reprezntantului NV sunt: '|| ' ' ||nr_catitate2);
 END;
 /