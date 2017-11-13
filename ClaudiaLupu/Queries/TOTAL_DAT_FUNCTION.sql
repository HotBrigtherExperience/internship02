CREATE OR REPLACE FUNCTION CL_TOTAL_DATORII (p_repr_comp angajati.cod_angajat%TYPE)
  RETURN NUMBER 
  IS 
  v_datorie NUMBER;
  v_cod NUMBER;
  v_mesaj VARCHAR2(255);
  BEGIN
   
    SELECT  SUM(cp.datoria) INTO v_datorie
    FROM companii cp, angajati ag
    WHERE cp.reprezentant_companie = ag.cod_angajat AND ag.cod_angajat = p_repr_comp
    GROUP BY ag.cod_angajat;
    DBMS_OUTPUT.PUT_LINE('Datoria companiei reprezentata de '|| p_repr_comp ||': '|| v_datorie);  
  
    RETURN v_datorie; 
    
    EXCEPTION  
    WHEN NO_DATA_FOUND THEN 
    DBMS_OUTPUT.PUT_LINE ('Angajatul cautat nu exista!');
    v_cod := SQLCODE;
    v_mesaj := SQLERRM;
    INSERT INTO erori VALUES(USER, SYSDATE, v_cod, v_mesaj);
    RETURN NULL;
    
    WHEN VALUE_ERROR THEN
    DBMS_OUTPUT.PUT_LINE('Cod invalid');
    v_cod := SQLCODE;
    v_mesaj := 'Value error';
    INSERT INTO erori VALUES(USER, SYSDATE, v_cod, v_mesaj);
    RETURN NULL;
    
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Others');
    v_cod := SQLCODE;
    v_mesaj := SQLERRM;
    INSERT INTO erori VALUES(USER, SYSDATE, v_cod, v_mesaj);
    RETURN NULL;
    
END CL_TOTAL_DATORII;