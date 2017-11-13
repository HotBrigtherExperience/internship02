create or replace PACKAGE BODY pkg_evidence_products
IS
 v_cod NUMBER;
 v_mesaj VARCHAR2(255);
PROCEDURE CL_THIRD_PRODUCT (p_rang IN NUMBER,
                            p_start IN DATE,
                            p_end IN DATE,
                            p_name OUT produse.descriere%TYPE,
                            p_cantitate OUT tranzactii.cantitatea%TYPE) 
  IS 
  BEGIN
    SELECT descriere, cantitate_vanduta INTO p_name, p_cantitate
    FROM (SELECT pr.cod_produs, pr.descriere, SUM(tr.cantitatea) * pr.pret vanzari, SUM(tr.cantitatea) cantitate_vanduta, RANK() OVER (ORDER BY SUM(tr.cantitatea) * pr.pret DESC) AS rang
          FROM tranzactii tr, produse pr
          WHERE pr.cod_produs = tr.cod_produs AND tr.data_comenzii BETWEEN p_start AND p_end
          GROUP BY pr.cod_produs, pr.descriere, pr.pret)
    WHERE rang = p_rang;
    
    DBMS_OUTPUT.PUT_LINE ('Produsul cautat este: '|| p_name || ', cantitate vanduta: '||p_cantitate);
   
    EXCEPTION 
    WHEN no_data_found THEN 
    DBMS_OUTPUT.PUT_LINE ('Nu exista un produs care sa indeplineasca conditiile dorite!');
    v_cod := SQLCODE;
    v_mesaj := SQLERRM;
    INSERT INTO erori VALUES(USER, SYSDATE, v_cod, v_mesaj); 
    
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Others');
    v_cod := SQLCODE;
    v_mesaj := SQLERRM;
    INSERT INTO erori VALUES(USER, SYSDATE, v_cod, v_mesaj);
    
END CL_THIRD_PRODUCT;

FUNCTION CL_TOTAL_DATORII (p_repr_comp angajati.cod_angajat%TYPE)
  RETURN NUMBER 
  IS 
  v_datorie NUMBER;
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

END pkg_evidence_products; --package body end