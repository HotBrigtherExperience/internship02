DROP TABLE Produse    CASCADE CONSTRAINTS;
DROP TABLE Angajati   CASCADE CONSTRAINTS;
DROP TABLE Oficii     CASCADE CONSTRAINTS;
DROP TABLE Companii   CASCADE CONSTRAINTS;
DROP TABLE Tranzactii CASCADE CONSTRAINTS;


CREATE TABLE Produse 
(
    Cod_produs  NUMERIC         PRIMARY KEY,
    Descriere   VARCHAR2(20),
    Pret        NUMERIC(8,2),
    Exista      CHAR(1)
);


CREATE TABLE Angajati
(
    Cod_angajat             VARCHAR2(3) PRIMARY KEY,
    Nume                    VARCHAR2(15),
    Prenume                 VARCHAR2(15),
    Varsta                  NUMERIC,
    Functia                 VARCHAR2(20),
    Cod_oficiu              VARCHAR2(3),
    Data_angajarii          DATE,
    Suma_planificata        NUMERIC(8,2)
);


CREATE TABLE Oficii
(
    Cod_oficiu              VARCHAR2(3) PRIMARY KEY,
    Localitatea             VARCHAR2(15),
    Regiunea                VARCHAR2(6),
    Cod_manager             VARCHAR2(3)               REFERENCES Angajati(Cod_angajat) ON DELETE CASCADE
);
ALTER TABLE     Angajati 
ADD CONSTRAINT  new_reference 
    FOREIGN KEY(Cod_oficiu) 
    REFERENCES Oficii(Cod_oficiu)   
    ON DELETE CASCADE;


CREATE TABLE Companii
(
    Cod_companie            VARCHAR2(3) PRIMARY KEY,
    Compania                VARCHAR2(15),
    Reprezentant_companie   VARCHAR2(3), 
    Datoria                 NUMERIC(8,2)
);
ALTER TABLE     Companii 
ADD CONSTRAINT  companii_reference 
    FOREIGN KEY(Reprezentant_companie) 
    REFERENCES Angajati(Cod_angajat) 
    ON DELETE CASCADE;

CREATE TABLE Tranzactii
(
    Data_comenzii           DATE,
    Cod_client              VARCHAR2(3)              REFERENCES Companii(Cod_companie) ON DELETE CASCADE,
    Cod_vanzator            VARCHAR2(3)              REFERENCES Angajati(Cod_angajat)  ON DELETE CASCADE,
    Cod_produs              NUMERIC                  REFERENCES Produse(Cod_produs)    ON DELETE CASCADE,
    Cantitatea              NUMERIC
);
