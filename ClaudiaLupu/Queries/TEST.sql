DECLARE
v_nume produse.descriere%TYPE; 
v_cantitate tranzactii.cantitatea%TYPE;
v_datorie NUMBER;
v_repr_comp angajati.cod_angajat%TYPE;
v_start DATE;
v_cod NUMBER;
v_mesaj VARCHAR2(255);
BEGIN
  v_start := TO_DATE('01.01.2005','dd.mm.yyyy');
  pkg_evidence_products.cl_third_product(3,v_start, TO_DATE('28.02.2005','dd.mm.yyyy'),v_nume, v_cantitate);

  v_datorie:= pkg_evidence_products.cl_total_datorii('GL');
  
 
END;