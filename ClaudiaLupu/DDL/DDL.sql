DROP TABLE ANGAJATI CASCADE CONSTRAINTS;
DROP TABLE OFICII CASCADE CONSTRAINTS;
DROP TABLE PRODUSE CASCADE CONSTRAINTS;
DROP TABLE COMPANII CASCADE CONSTRAINTS;
DROP TABLE TRANZACTII CASCADE CONSTRAINTS;

CREATE TABLE ANGAJATI (
    Cod_angajat VARCHAR2(2) PRIMARY KEY,
    Nume VARCHAR2(15),
    Prenume VARCHAR2(15),
    Varsta NUMBER,
    Functia VARCHAR2(20),
    Cod_oficiu VARCHAR2(2),
    Data_angajarii DATE,
    Suma_planificata NUMBER(6,2)
);

CREATE TABLE OFICII (
    Cod_oficiu VARCHAR2(2) PRIMARY KEY,
    Localitatea VARCHAR2(15),
    Regiunea VARCHAR2(6),
    Cod_manager VARCHAR2(2) 
);

CREATE TABLE COMPANII (
    Cod_companie VARCHAR2(2) PRIMARY KEY,
    Compania VARCHAR2(15),
    Reprezentant_companie VARCHAR2(2), 
    Datoria NUMBER(6,2)
);

CREATE TABLE PRODUSE (
    Cod_produs NUMBER PRIMARY KEY,
    Descriere VARCHAR2(20),
    Pret NUMBER(3,2),
    Exista VARCHAR2(1) CHECK(Exista IN ('Y','N'))
);

CREATE TABLE TRANZACTII (
    Data_comenzii DATE,
    Cod_client VARCHAR2(2), 
    Cod_vanzator VARCHAR2(2), 
    Cod_produs NUMBER, 
    Cantitatea NUMBER
);

ALTER TABLE ANGAJATI
ADD CONSTRAINT fkAng FOREIGN KEY (Cod_oficiu) REFERENCES OFICII(Cod_oficiu); 

ALTER TABLE OFICII
ADD CONSTRAINT fkOficii FOREIGN KEY (Cod_manager) REFERENCES ANGAJATI(Cod_angajat); 

ALTER TABLE COMPANII
ADD CONSTRAINT fkComp FOREIGN KEY (Reprezentant_companie) REFERENCES ANGAJATI(Cod_angajat); 

ALTER TABLE TRANZACTII
ADD CONSTRAINT fkTranz1 FOREIGN KEY (Cod_client) REFERENCES COMPANII(Cod_companie);

ALTER TABLE TRANZACTII
ADD CONSTRAINT fkTranz2 FOREIGN KEY (Cod_vanzator) REFERENCES ANGAJATI(Cod_angajat);

ALTER TABLE TRANZACTII
ADD CONSTRAINT fkTranz3 FOREIGN KEY (Cod_produs) REFERENCES PRODUSE(Cod_produs);
 



