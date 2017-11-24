create or replace PACKAGE pkg_bind_var
AS 

PROCEDURE CL_THIRD_PRODUCT(p_rang IN NUMBER,
                           p_start IN DATE,
                           p_end IN DATE,
                           p_name OUT produse.descriere%TYPE,
                           p_cantitate OUT tranzactii.cantitatea%TYPE);
                           
FUNCTION CL_TOTAL_DATORII (p_repr_comp angajati.cod_angajat%TYPE) RETURN NUMBER;

END pkg_bind_var;

create or replace PACKAGE BODY pkg_bind_var
IS
 v_cod NUMBER;
 v_mesaj VARCHAR2(255);
 v_sql VARCHAR2(32700);
PROCEDURE CL_THIRD_PRODUCT (p_rang IN NUMBER,
                            p_start IN DATE,
                            p_end IN DATE,
                            p_name OUT produse.descriere%TYPE,
                            p_cantitate OUT tranzactii.cantitatea%TYPE) 
  IS 
  BEGIN
    v_sql := 'SELECT descriere, cantitate_vanduta' ||
             'FROM (SELECT pr.cod_produs,' ||
                           'pr.descriere, 
                           SUM(tr.cantitatea) * pr.pret vanzari, 
                           SUM(tr.cantitatea) cantitate_vanduta, 
                           RANK() OVER (ORDER BY SUM(tr.cantitatea) * pr.pret DESC) AS rang
                    FROM   tranzactii tr, produse pr
                    WHERE pr.cod_produs = tr.cod_produs 
                    AND   tr.data_comenzii BETWEEN :data_inceput AND :data_sfarsit
                    GROUP BY pr.cod_produs, pr.descriere, pr.pret
                    )
              WHERE rang = :rang';
    
    EXECUTE IMMEDIATE v_sql INTO p_name, p_cantitate USING p_start, p_end, p_rang;
    
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
   
    v_sql := 'SELECT  SUM(cp.datoria)
    FROM companii cp
    WHERE cp.reprezentant_companie = :reprezentant
    GROUP BY cp.reprezentant_companie';
    
    EXECUTE IMMEDIATE v_sql INTO v_datorie USING p_repr_comp;
    RETURN v_datorie; 
    
    EXCEPTION  
    WHEN NO_DATA_FOUND THEN 
    DBMS_OUTPUT.PUT_LINE ('Angajatul cautat nu exista!');
    v_cod := SQLCODE;
    v_mesaj := SQLERRM;
    INSERT INTO erori VALUES(USER, SYSDATE, v_cod, v_mesaj);
    RETURN 0;
    
    WHEN VALUE_ERROR THEN
    DBMS_OUTPUT.PUT_LINE('Cod invalid');
    v_cod := SQLCODE;
    v_mesaj := 'Value error';
    INSERT INTO erori VALUES(USER, SYSDATE, v_cod, v_mesaj);
    RETURN 0;
    
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Others');
    v_cod := SQLCODE;
    v_mesaj := SQLERRM;
    INSERT INTO erori VALUES(USER, SYSDATE, v_cod, v_mesaj);
    RETURN 0;
    
END CL_TOTAL_DATORII;

END pkg_bind_var;