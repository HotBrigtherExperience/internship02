SET SERVEROUTPUT ON
DECLARE
V_NUME produse.descriere%type; 
V_CANTITATE tranzactii.cantitatea%type;
V_DATORIE number;
V_REPR_COMP ANGAJATI.COD_ANGAJAT%type;
V_start date;
BEGIN
  V_START := TO_DATE('01.01.2005','dd.mm.yyyy');
  CL_THIRD_PRODUCT(V_START, TO_DATE('28.02.2005','dd.mm.yyyy'),V_NUME, V_CANTITATE);
  V_REPR_COMP := 'GL';
  v_DATORIE := CL_TOTAL_DATORII(V_REPR_COMP);
  DBMS_OUTPUT.PUT_LINE('Datoria companiei reprezentanta de '|| V_REPR_COMP ||': '|| V_DATORIE);
END;