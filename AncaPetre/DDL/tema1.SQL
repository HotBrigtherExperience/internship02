DROP TABLE intern_ap.produse    CASCADE CONSTRAINTS;
DROP TABLE intern_ap.angajati   CASCADE CONSTRAINTS;
DROP TABLE intern_ap.oficii     CASCADE CONSTRAINTS;
DROP TABLE intern_ap.companii   CASCADE CONSTRAINTS;
DROP TABLE intern_ap.tranzactii CASCADE CONSTRAINTS;

DROP SEQUENCE intern_ap.pk_produse;
DROP TABLE intern_ap.logs;
DROP SEQUENCE intern_ap.sequence_logs;

CREATE TABLE intern_ap.produse 
(
    cod_produs  NUMERIC         PRIMARY KEY,
    descriere   VARCHAR2(100),
    pret        NUMERIC(8,2),
    exista      CHAR(1)
);

CREATE SEQUENCE intern_ap.pk_produse  MINVALUE 1 MAXVALUE 500 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
CREATE TABLE intern_ap.angajati
(
    cod_angajat             VARCHAR2(3) PRIMARY KEY,
    nume                    VARCHAR2(15),
    prenume                 VARCHAR2(15),
    varsta                  NUMERIC,
    functia                 VARCHAR2(20),
    cod_oficiu              VARCHAR2(3),
    data_angajarii          DATE,
    suma_planificata        NUMERIC(8,2)
);


CREATE TABLE intern_ap.oficii
(
    cod_oficiu              VARCHAR2(3) PRIMARY KEY,
    localitatea             VARCHAR2(15),
    regiunea                VARCHAR2(6),
    cod_manager             VARCHAR2(3)               REFERENCES intern_ap.angajati(cod_angajat) ON DELETE CASCADE
);
ALTER TABLE     intern_ap.angajati 
ADD CONSTRAINT  new_reference 
    FOREIGN KEY(cod_oficiu) 
    REFERENCES intern_ap.oficii(cod_oficiu)   
    ON DELETE CASCADE;


CREATE TABLE intern_ap.companii
(
    cod_companie            VARCHAR2(3) PRIMARY KEY,
    compania                VARCHAR2(15),
    reprezentant_companie   VARCHAR2(3), 
    datoria                 NUMERIC(8,2)
);
ALTER TABLE  intern_ap.companii 
ADD CONSTRAINT  companii_reference 
    FOREIGN KEY(reprezentant_companie) 
    REFERENCES intern_ap.angajati(cod_angajat) 
    ON DELETE CASCADE;

CREATE TABLE intern_ap.Tranzactii
(
    data_comenzii           DATE,
    cod_client              VARCHAR2(3)              REFERENCES intern_ap.companii(cod_companie) ON DELETE CASCADE,
    cod_vanzator            VARCHAR2(3)              REFERENCES intern_ap.angajati(cod_angajat)  ON DELETE CASCADE,
    cod_produs              NUMERIC                  REFERENCES intern_ap.produse(cod_produs)    ON DELETE CASCADE,
    cantitatea              NUMERIC
);

CREATE TABLE intern_ap.LOGS
(
    ID NUMBER(3,0) PRIMARY KEY, 
	OBJECT_NAME    VARCHAR2(50), 
	CODE           VARCHAR2(50), 
	MESSAGE        VARCHAR2(150)
    
);
 
CREATE SEQUENCE intern_ap.sequence_logs  MINVALUE 1 MAXVALUE 1000 INCREMENT BY 1 START WITH 101 CACHE 100 NOORDER  NOCYCLE ;