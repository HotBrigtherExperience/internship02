SET SERVEROUTPUT ON
DECLARE
v_nume produse.descriere%type; 
v_cantitate tranzactii.cantitatea%type;
v_datorie number;
p_cod produse.descriere%type;
p_start date;
BEGIN
  --p_start := &start_date;
  p_start := TO_DATE('01.01.2005','dd.mm.yyyy');
  CL_THIRD_PRODUCT(p_start, TO_DATE('28.02.2005','dd.mm.yyyy'),v_nume, v_cantitate);
 -- p_cod := &cod;
  p_cod := 'AT';
  v_datorie := CL_TOTAL_DATORII(p_cod);
  DBMS_OUTPUT.PUT_LINE('Datoria firmei '|| p_cod ||': '|| V_DATORIE);
END;