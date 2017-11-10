CREATE OR REPLACE FUNCTION CL_TOTAL_DATORII (P_COD_COMP COMPANII.COD_COMPANIE%TYPE)
RETURN NUMBER 
IS 
V_DATORIE number;
BEGIN
  select  SUM(cp.DATORIA) into v_datorie
  from companii cp, tranzactii tr
  where tr.cod_client = cp.cod_companie and cp.cod_companie = P_COD_COMP
  group by cod_companie;
  
  RETURN V_DATORIE;
END CL_TOTAL_DATORII;