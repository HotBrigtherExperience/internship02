DROP TABLE ANGAJATI CASCADE CONSTRAINTS;
DROP TABLE OFICII CASCADE CONSTRAINTS;
DROP TABLE COMPANII CASCADE CONSTRAINTS;
DROP TABLE TRANZACTII CASCADE CONSTRAINTS;
DROP TABLE PRODUSE CASCADE CONSTRAINTS;

CREATE TABLE PRODUSE (
    Cod_produs      NUMBER          PRIMARY KEY,
    Descriere       VARCHAR2(20),  
    Pret            NUMBER(8,2),
    Exista          VARCHAR2(1)     CHECK ( Exista IN('Y','N') )
);

CREATE TABLE ANGAJATI (
    Cod_angajat         VARCHAR2(2)     RIMARY KEY,
    Nume                VARCHAR2(15),
    Prenume             VARCHAR2(15),
    Varsta              NUMBER,
    Functia             VARCHAR2(20),
    Cod_oficiu          VARCHAR2(2),
    Data_angajarii      DATE,
    Suma_planificata    NUMBER(8,2));

CREATE TABLE COMPANII (
    Cod_companie                VARCHAR2(2)     PRIMARY KEY,
    Compania                    VARCHAR2(15),
    Reprezentant_companie       VARCHAR2(2),
    Datoria                     NUMBER(8,2));

CREATE TABLE OFICII(
    Cod_oficiu      VARCHAR2(2)     PRIMARY KEY,
    Localitatea     VARCHAR2(15),
    Regiunea        VARCHAR2(6),
    Cod_manager     VARCHAR2(2));

CREATE TABLE Tranzactii(
    Data_comenzii   DATE,
    Cod_client      VARCHAR2(2),
    Cod_vanzator    VARCHAR2(2),
    Cod_produs      NUMBER,
    Cantitate       NUMBER);

ALTER TABLE OFICII
ADD CONSTRAINT fk1 FOREIGN KEY (Cod_manager) REFERENCES ANGAJATI(Cod_angajat)
INITIALLY DEFERRED DEFERRABLE;

ALTER TABLE COMPANII 
ADD CONSTRAINT fk2 FOREIGN KEY (Reprezentant_companie) REFERENCES ANGAJATI(Cod_angajat)
INITIALLY DEFERRED DEFERRABLE;

ALTER TABLE ANGAJATI
ADD CONSTRAINT fk3 FOREIGN KEY (Cod_oficiu) REFERENCES OFICII(Cod_oficiu)
INITIALLY DEFERRED DEFERRABLE;

ALTER TABLE TRANZACTII
ADD CONSTRAINT fk4 FOREIGN KEY (Cod_client) REFERENCES COMPANII(Cod_companie)
INITIALLY DEFERRED DEFERRABLE;

ALTER TABLE TRANZACTII
ADD CONSTRAINT fk5 FOREIGN KEY (Cod_vanzator) REFERENCES ANGAJATI(Cod_angajat)
INITIALLY DEFERRED DEFERRABLE;

ALTER TABLE TRANZACTII
ADD CONSTRAINT fk6 FOREIGN KEY (Cod_produs) REFERENCES PRODUSE(Cod_produs)
INITIALLY DEFERRED DEFERRABLE;
