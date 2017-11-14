DROP PACKAGE pkg_evidence_products;
DROP PACKAGE BODY pkg_evidence_products;

CREATE OR REPLACE PACKAGE pkg_evidence_products AS
PROCEDURE best_seller_product(data_min IN DATE, data_max IN DATE);
FUNCTION suma_datorii(reprezentant companii.reprezentant_companie%type) RETURN NUMBER;
END;

CREATE OR REPLACE PACKAGE BODY pkg_evidence_products AS
PROCEDURE best_seller_product(data_min IN DATE, data_max IN DATE) AS
v_SQLCODE NUMBER;
v_SQLMESS VARCHAR2(250);
v_descriere produse.descriere%type;
v_vanzari NUMBER;
BEGIN
SELECT descriere,vanzari INTO v_descriere, v_vanzari
FROM (SELECT p.descriere,SUM(p.pret*t.cantitate) as VANZARI, RANK() OVER(ORDER BY SUM(p.pret*t.cantitate) DESC ) v_rank
FROM Tranzactii t, Produse p
WHERE t.cod_produs=p.cod_produs AND t.data_comenzii>data_min AND t.data_comenzii<data_max
GROUP BY p.descriere)
WHERE v_rank=3;
DBMS_OUTPUT.PUT_LINE('Produsul '|| v_descriere||' a inregistrat cele mai mari vanzari in perioada data: '||v_vanzari);
EXCEPTION
WHEN NO_DATA_FOUND THEN 
v_SQLCODE:=SQLCODE;
v_SQLMESS:=SQLERRM;
INSERT INTO LOGS VALUES(seq_logs.NEXTVAL,'BEST_SELLER_PRODUCT',v_SQLCODE,v_SQLMESS);
WHEN TOO_MANY_ROWS THEN 
v_SQLCODE:=SQLCODE;
v_SQLMESS:=SQLERRM;
INSERT INTO LOGS VALUES(seq_logs.NEXTVAL,'BEST_SELLER_PRODUCT',v_SQLCODE,v_SQLMESS);
WHEN OTHERS THEN
v_SQLCODE:=SQLCODE;
v_SQLMESS:=SQLERRM;
INSERT INTO LOGS VALUES(seq_logs.NEXTVAL,'BEST_SELLER_PRODUCT',v_SQLCODE,v_SQLMESS);
END;

FUNCTION suma_datorii(reprezentant companii.reprezentant_companie%type) RETURN NUMBER AS
v_suma companii.datoria%type;
v_SQLCODE NUMBER;
v_SQLMESS VARCHAR2(250);
BEGIN
SELECT datorii INTO v_suma
FROM (SELECT reprezentant_companie, SUM(datoria) OVER(partition by reprezentant_companie) as datorii
FROM Companii WHERE reprezentant_companie=reprezentant)
GROUP BY reprezentant_companie,datorii;
RETURN v_suma;
EXCEPTION
WHEN NO_DATA_FOUND THEN 
v_SQLCODE:=SQLCODE;
v_SQLMESS:=SQLERRM;
INSERT INTO LOGS VALUES(seq_logs.NEXTVAL,'SUMA_DATORII',v_SQLCODE,v_SQLMESS);
WHEN TOO_MANY_ROWS THEN 
v_SQLCODE:=SQLCODE;
v_SQLMESS:=SQLERRM;
INSERT INTO LOGS VALUES(seq_logs.NEXTVAL,'SUMA_DATORII',v_SQLCODE,v_SQLMESS);
WHEN OTHERS THEN
v_SQLCODE:=SQLCODE;
v_SQLMESS:=SQLERRM;
INSERT INTO LOGS VALUES(seq_logs.NEXTVAL,'SUMA_DATORII',v_SQLCODE,v_SQLMESS);
END;
END;

EXECUTE pkg_evidence_products.best_seller_product(to_date('01-JAN-05'), to_date('01-MAR-05'));

DECLARE
suma NUMBER;
BEGIN
suma:=pkg_evidence_products.suma_datorii('PI');
DBMS_OUTPUT.PUT_LINE('Suma: ' || suma);
END;
