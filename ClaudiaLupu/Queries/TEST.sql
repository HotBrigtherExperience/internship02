DECLARE
v_nume produse.descriere%TYPE; 
v_cantitate tranzactii.cantitatea%TYPE;
v_datorie NUMBER;
v_repr_comp angajati.cod_angajat%TYPE;
v_start DATE;
v_end DATE;
v_cod NUMBER;
v_mesaj VARCHAR2(255);
BEGIN
  v_start := TO_DATE('01.01.2005','dd.mm.yyyy');
  v_end := TO_DATE('28.02.2005','dd.mm.yyyy');
  pkg_evidence_products.cl_third_product(3,v_start,v_end,v_nume, v_cantitate);

  v_datorie:= pkg_evidence_products.cl_total_datorii('GL');
  
  EXCEPTION
   WHEN VALUE_ERROR THEN
   DBMS_OUTPUT.PUT_LINE('Cod invalid');
   v_cod := SQLCODE;
   v_mesaj := 'Value error';
   INSERT INTO erori VALUES(USER, SYSDATE, v_cod, v_mesaj);
 
END;
