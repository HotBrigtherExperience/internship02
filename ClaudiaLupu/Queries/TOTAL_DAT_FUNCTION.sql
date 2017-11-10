CREATE OR REPLACE FUNCTION CL_TOTAL_DATORII (p_repr_comp ANGAJATI.COD_ANGAJAT%TYPE)
RETURN NUMBER 
IS 
V_DATORIE NUMBER;
BEGIN
  SELECT  SUM(cp.DATORIA) INTO v_datorie
  FROM companii cp, ANGAJATI AG
  WHERE CP.REPREZENTANT_COMPANIE = AG.COD_ANGAJAT AND AG.cod_angajat = p_repr_comp
  GROUP BY AG.COD_ANGAJAT;
  
  RETURN V_DATORIE;
END CL_TOTAL_DATORII;