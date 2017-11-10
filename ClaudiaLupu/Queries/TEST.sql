SET SERVEROUTPUT ON
DECLARE
v_nume produse.descriere%TYPE; 
v_cantitate tranzactii.cantitatea%TYPE;
v_datorie NUMBER;
v_repr_comp angajati.cod_angajat%TYPE;
v_start DATE;
BEGIN
  v_start := TO_DATE('01.01.2005','dd.mm.yyyy');
  pkg_evidence_products.cl_third_product(V_START, TO_DATE('28.02.2005','dd.mm.yyyy'),v_nume, v_cantitate);
  v_repr_comp := 'GL';
  v_datorie:= pkg_evidence_products.cl_total_datorii(v_repr_comp);
  DBMS_OUTPUT.PUT_LINE('Datoria companiei reprezentata de '|| V_REPR_COMP ||': '|| v_datorie);
END;