DELETE Oficii;
DELETE Angajati;
DELETE Companii;
--insertion in Oficii

INSERT INTO Oficii (Cod_oficiu ,Localitatea ,Regiunea )
    VALUES ('BL','Beltsy','nord');

INSERT INTO Oficii (Cod_oficiu, Localitatea, Regiunea)
    VALUES ('C' ,'Kishinew','centru');

INSERT INTO Oficii (Cod_oficiu ,Localitatea ,Regiunea )
    VALUES ('CH','Cahul','sud');
   
INSERT INTO Oficii (Cod_oficiu ,Localitatea ,Regiunea )
    VALUES ('ED','Edinets','nord');
   
INSERT INTO Oficii (Cod_oficiu ,Localitatea ,Regiunea )
    VALUES ('GL','Glodeni','nord');
   
INSERT INTO Oficii (Cod_oficiu ,Localitatea ,Regiunea )
    VALUES ('OR','Orhei','centru');
   
INSERT INTO Oficii (Cod_oficiu ,Localitatea ,Regiunea )
    VALUES ('RZ','Rezina','nord');
   
INSERT INTO Oficii (Cod_oficiu ,Localitatea ,Regiunea )
    VALUES ('SR','Soroca','nord');
   
INSERT INTO Oficii (Cod_oficiu ,Localitatea ,Regiunea )
    VALUES ('UN','Ungheni','centru');
   

---inserare in tabela Angajati
    
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Cod_oficiu, Data_angajarii, Suma_planificata)
    VALUES ('BC','Bucataru','Constantin',31,'contabil','SR',TO_DATE('18/01/2001','DD/MM/YYYY'),0);
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Cod_oficiu, Data_angajarii, Suma_planificata)
    VALUES ('BN','Bucur','Nicolae',27,'manager','SR',TO_DATE('31/01/2001','DD/MM/YYYY'),28000); 
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Cod_oficiu, Data_angajarii, Suma_planificata)
    VALUES ('CI','Cozma','Ion',20,'reprezentatnt','OR',TO_DATE('17/11/2001','DD/MM/YYYY'),2000);
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Cod_oficiu, Data_angajarii, Suma_planificata)
    VALUES ('DE','Dodon','Elena',34,'contabil','ED',TO_DATE('20/02/2000','DD/MM/YYYY'),0);    
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Cod_oficiu, Data_angajarii, Suma_planificata)
    VALUES ('DR','Dutca','Radion',33,'reprezentatnt','GL',TO_DATE('12/12/1999','DD/MM/YYYY'),3250);
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Cod_oficiu, Data_angajarii, Suma_planificata)
    VALUES ('FE','Frumosu','Emilia',37,'contabil','ED',TO_DATE('12/02/1998','DD/MM/YYYY'),0); 
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Cod_oficiu, Data_angajarii, Suma_planificata)
    VALUES ('FN','Florea','Nicoleta',23,'reprezentatnt','BL',TO_DATE('13/06/2000','DD/MM/YYYY'),2500);
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Cod_oficiu, Data_angajarii, Suma_planificata)
    VALUES ('GC','Grosu','Corina',19,'reprezentatnt','RZ',TO_DATE('04/04/2000','DD/MM/YYYY'),1900);   
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Cod_oficiu, Data_angajarii, Suma_planificata)
    VALUES ('GI','Gomoja','Ilie',32,'reprezentatnt','CH',TO_DATE('13/07/2005','DD/MM/YYYY'),3250);
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Cod_oficiu, Data_angajarii, Suma_planificata)
    VALUES ('GL','Grosu','Leonid',23,'reprezentatnt','ED',TO_DATE('28/03/2000','DD/MM/YYYY'),2500); 
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Cod_oficiu, Data_angajarii, Suma_planificata)
    VALUES ('GM','Grosu','Mihai',42,'sef','C',TO_DATE('07/02/1998','DD/MM/YYYY'),0);
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Cod_oficiu, Data_angajarii, Suma_planificata)
    VALUES ('GT','Graur','Teodor',35,'reprezentatnt','SR',TO_DATE('18/08/2004','DD/MM/YYYY'),35000);    
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Cod_oficiu, Data_angajarii, Suma_planificata)
    VALUES ('HI','Harea','Igor',25,'manager','CH',TO_DATE('30/03/2003','DD/MM/YYYY'),22000);
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Cod_oficiu, Data_angajarii, Suma_planificata)
    VALUES ('LA','Lungu','Alexandru',43,'sef adjunc','C',TO_DATE('07/02/1998','DD/MM/YYYY'),0); 
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Cod_oficiu, Data_angajarii, Suma_planificata)
    VALUES ('LV','Lisnic','Vladimir',29,'manager','OR',TO_DATE('13/09/2001','DD/MM/YYYY'),351);
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Cod_oficiu, Data_angajarii, Suma_planificata)
    VALUES ('ML','Mutu','Livia',38,'manager','BL',TO_DATE('09/02/1999','DD/MM/YYYY'),15000);   
    
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Cod_oficiu, Data_angajarii, Suma_planificata)
    VALUES ('MS','Mutu','Sorina',35,'reprezentatnt','UN',TO_DATE('06/04/2004','DD/MM/YYYY'),3500);    
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Cod_oficiu, Data_angajarii, Suma_planificata)
    VALUES ('NV','Nanu','Vasile',45,'reprezentatnt','C',TO_DATE('09/02/1998','DD/MM/YYYY'),4500);
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Cod_oficiu, Data_angajarii, Suma_planificata)
    VALUES ('PI','Prisacaru','Inga',27,'reprezentatnt','UN',TO_DATE('18/03/2001','DD/MM/YYYY'),2750); 
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Cod_oficiu, Data_angajarii, Suma_planificata)
    VALUES ('RD','Rusu','Dorina',35,'reprezentatnt','OR',TO_DATE('18/09/2001','DD/MM/YYYY'),3500);
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Cod_oficiu, Data_angajarii, Suma_planificata)
    VALUES ('SA','Speriatu','Ana',31,'contabil','GL',TO_DATE('15/01/2003','DD/MM/YYYY'),18000);    
     
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Cod_oficiu, Data_angajarii, Suma_planificata)
    VALUES ('SD','Spada','Doru',29,'manager','RZ',TO_DATE('12/01/2003','DD/MM/YYYY'),18000);
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Cod_oficiu, Data_angajarii, Suma_planificata)
    VALUES ('SM','Surdu','Mihaiela',25,'reprezentatnt','BL',TO_DATE('12/03/2000','DD/MM/YYYY'),20000); 
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Cod_oficiu, Data_angajarii, Suma_planificata)
    VALUES ('VD','Vieru','Dorin',32,'manager','C',TO_DATE('08/02/1998','DD/MM/YYYY'),80000);
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Cod_oficiu, Data_angajarii, Suma_planificata)
    VALUES ('VI','Vrabie','Ion',42,'contabil','RZ',TO_DATE('18/10/2002','DD/MM/YYYY'),0); 
    
--UPDATE Oficii

UPDATE   Oficii  SET Cod_manager='ML' WHERE  Cod_oficiu='BL';

UPDATE   Oficii  SET Cod_manager='VD' WHERE  Cod_oficiu= 'C';

UPDATE   Oficii  SET Cod_manager='HI' WHERE  Cod_oficiu='CH';
   
UPDATE   Oficii  SET Cod_manager='ML' WHERE  Cod_oficiu='ED';
   
UPDATE   Oficii  SET Cod_manager='ML' WHERE  Cod_oficiu='GL';
   
UPDATE   Oficii  SET Cod_manager='LV' WHERE  Cod_oficiu='OR';
   
UPDATE   Oficii  SET Cod_manager='SD' WHERE  Cod_oficiu='RZ'; 
   
UPDATE   Oficii  SET Cod_manager='BN' WHERE  Cod_oficiu='SR';
   
UPDATE   Oficii  SET Cod_manager='VD' WHERE  Cod_oficiu='UN';
   

--insertion in Companii

INSERT INTO Companii (Cod_companie ,Compania ,Reprezentant_companie , Datoria )
    VALUES ('AL','Auto Lada','NV',7500.00);

INSERT INTO Companii (Cod_companie ,Compania ,Reprezentant_companie , Datoria )
    VALUES ('AS','Asito','PI',26000.00);

INSERT INTO Companii (Cod_companie ,Compania ,Reprezentant_companie , Datoria )
    VALUES ('AT','Astra','PI',14780.00);
   
INSERT INTO Companii (Cod_companie ,Compania ,Reprezentant_companie , Datoria )
    VALUES ('AV','Avon','GC',12000.00);
   
INSERT INTO Companii (Cod_companie ,Compania ,Reprezentant_companie , Datoria )
    VALUES ('BA','Basarabia','GC',0.00);
   
INSERT INTO Companii (Cod_companie ,Compania ,Reprezentant_companie , Datoria )
    VALUES ('BI','Bizpro','PI',13050.00);
   
INSERT INTO Companii (Cod_companie ,Compania ,Reprezentant_companie , Datoria )
    VALUES ('CA','Cascad','GI',12300.00);
   
INSERT INTO Companii (Cod_companie ,Compania ,Reprezentant_companie , Datoria )
    VALUES ('FB','Floribel','GL',600.00);
   
INSERT INTO Companii (Cod_companie ,Compania ,Reprezentant_companie , Datoria )
    VALUES ('FL','Floarea','GL',0.00);
   
INSERT INTO Companii (Cod_companie ,Compania ,Reprezentant_companie , Datoria )
    VALUES ('IL','InLac','GI',1000.00);

INSERT INTO Companii (Cod_companie ,Compania ,Reprezentant_companie , Datoria )
    VALUES ('KN','Knauf','PI',0.00);

INSERT INTO Companii (Cod_companie ,Compania ,Reprezentant_companie , Datoria )
    VALUES ('LO','Luck Oil','NV',13000.00);
   
INSERT INTO Companii (Cod_companie ,Compania ,Reprezentant_companie , Datoria )
    VALUES ('PA','Patria','DR',500.00);
   
INSERT INTO Companii (Cod_companie ,Compania ,Reprezentant_companie , Datoria )
    VALUES ('PE','Petrom','NV',50000.00);
   
INSERT INTO Companii (Cod_companie ,Compania ,Reprezentant_companie , Datoria )
    VALUES ('TC','TransCom','MS',6000.00);
   
INSERT INTO Companii (Cod_companie ,Compania ,Reprezentant_companie , Datoria )
    VALUES ('TI','Tirex','NV',5000.00);
   
INSERT INTO Companii (Cod_companie ,Compania ,Reprezentant_companie , Datoria )
    VALUES ('TU','Tutun Ind','GL',1000.00);
   
INSERT INTO Companii (Cod_companie ,Compania ,Reprezentant_companie , Datoria )
    VALUES ('VT','Vitanta','GI',800.00);
   
INSERT INTO Companii (Cod_companie ,Compania ,Reprezentant_companie , Datoria )
    VALUES ('ZO','Zorile','GT',22890.00);
    
-- insertion in Produse

INSERT INTO Produse (Cod_produs , Descriere ,Pret ,Exista)
    VALUES (PK_PRODUSE.NEXTVAL,'Monitor LG 17"',100.00,'Y');
    
INSERT INTO Produse (Cod_produs , Descriere ,Pret ,Exista)
    VALUES (PK_PRODUSE.NEXTVAL,'Monitor Samsung 15"',50.00,'F');   
    
INSERT INTO Produse (Cod_produs , Descriere ,Pret ,Exista)
    VALUES (PK_PRODUSE.NEXTVAL,'Televizor JVS 54cm',280.00,'F');
    
INSERT INTO Produse (Cod_produs , Descriere ,Pret ,Exista)
    VALUES (PK_PRODUSE.NEXTVAL,'Procesor Pentium 4',130.00,'T');

INSERT INTO Produse (Cod_produs , Descriere ,Pret ,Exista)
    VALUES (PK_PRODUSE.NEXTVAL,'Procesor Celeron 2000',125.00,'Y');
    
INSERT INTO Produse (Cod_produs , Descriere ,Pret ,Exista)
    VALUES (PK_PRODUSE.NEXTVAL,'Mouse Genius optic',4.00,'F');   
    
INSERT INTO Produse (Cod_produs , Descriere ,Pret ,Exista)
    VALUES (PK_PRODUSE.NEXTVAL,'Mouse Logitech optic',5.00,'T');
    
INSERT INTO Produse (Cod_produs , Descriere ,Pret ,Exista)
    VALUES (PK_PRODUSE.NEXTVAL,'Televizor Sony 72cm',485.00,'F'); 

INSERT INTO Produse (Cod_produs , Descriere ,Pret ,Exista)
    VALUES (PK_PRODUSE.NEXTVAL,'DVD Sony 50',75.00,'F');
    
INSERT INTO Produse (Cod_produs , Descriere ,Pret ,Exista)
    VALUES (PK_PRODUSE.NEXTVAL,'DVD Sony 32-16-32',135.00,'T');   
    
INSERT INTO Produse (Cod_produs , Descriere ,Pret ,Exista)
    VALUES (PK_PRODUSE.NEXTVAL,'CD-R Benq 700MB',0.10,'T');
    
INSERT INTO Produse (Cod_produs , Descriere ,Pret ,Exista)
    VALUES (PK_PRODUSE.NEXTVAL,'CD-RW Benq 700MB',0.25,'T');

INSERT INTO Produse (Cod_produs , Descriere ,Pret ,Exista)
    VALUES (PK_PRODUSE.NEXTVAL,'Tastiera Logitech alba',6.75,'T');
    
INSERT INTO Produse (Cod_produs , Descriere ,Pret ,Exista)
    VALUES (PK_PRODUSE.NEXTVAL,'Tastiera Logitech neagra',9.75,'F'); 

INSERT INTO Produse (Cod_produs , Descriere ,Pret ,Exista)
    VALUES (PK_PRODUSE.NEXTVAL,'Monitor Samsung 17"',85.50,'T');
    
INSERT INTO Produse (Cod_produs , Descriere ,Pret ,Exista)
    VALUES (PK_PRODUSE.NEXTVAL,'Monitor Samsung 21"',109.50,'F');   
    
INSERT INTO Produse (Cod_produs , Descriere ,Pret ,Exista)
    VALUES (PK_PRODUSE.NEXTVAL,'Monitor Samtron 15"',35.50,'F');
    
INSERT INTO Produse (Cod_produs , Descriere ,Pret ,Exista)
    VALUES (PK_PRODUSE.NEXTVAL,'Televizor Alfa 51cm',100.40,'T'); 

INSERT INTO Produse (Cod_produs , Descriere ,Pret ,Exista)
    VALUES (PK_PRODUSE.NEXTVAL,'Televizor Polar 54cm',200.00,'F');   
    
INSERT INTO Produse (Cod_produs , Descriere ,Pret ,Exista)
    VALUES (PK_PRODUSE.NEXTVAL,'Filtru Sven 220V',3.75,'T');
    
INSERT INTO Produse (Cod_produs , Descriere ,Pret ,Exista)
    VALUES (PK_PRODUSE.NEXTVAL,'Telefon Siemens A55',85.00,'T');   

--insertion in Tranzactii

INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('01/01/2005','DD/MM/YYYY'),'BI','NV',7,5);  
    
INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('01/01/2005','DD/MM/YYYY'),'IL','PI',15,4); 

INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('03/01/2005','DD/MM/YYYY'),'VT','HI',14,12); 

INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('03/01/2005','DD/MM/YYYY'),'ZO','GI',12,3); 

INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('14/01/2005','DD/MM/YYYY'),'VT','BN',15,8);    
   
INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('18/01/2005','DD/MM/YYYY'),'TI','GL',12,3);  
   
INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('31/01/2005','DD/MM/YYYY'),'CA','GI',11,2); 

INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('31/01/2005','DD/MM/YYYY'),'VT','BN',14,9); 

INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('02/02/2005','DD/MM/YYYY'),'PE','SM',12,2); 

INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('11/02/2005','DD/MM/YYYY'),'LO','SM',2,3);       

INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('11/02/2005','DD/MM/YYYY'),'TI','FN',21,2);    
   
INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('22/02/2005','DD/MM/YYYY'),'TI','NV',13,2);   
   
INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('02/03/2005','DD/MM/YYYY'),'AL','LV',17,2); 
   
INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('03/03/2005','DD/MM/YYYY'),'FL','PI',11,3);    
   
INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('04/03/2005','DD/MM/YYYY'),'TI','SD',14,3); 
   
INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('12/03/2005','DD/MM/YYYY'),'FL','PI',8,1);    

INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
   VALUES (TO_DATE('12/03/2005','DD/MM/YYYY'),'VT','GI',14,4);  

INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('26/03/2005','DD/MM/YYYY'),'AS','GC',8,3);
   
INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('26/03/2005','DD/MM/YYYY'),'PA','SD',12,10);
   
INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('04/04/2005','DD/MM/YYYY'),'AT','DR',11,5);    
   
INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('14/04/2005','DD/MM/YYYY'),'FL','SM',13,4);   
   
INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('18/04/2005','DD/MM/YYYY'),'AS','LV',3,1); 
   
INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('18/04/2005','DD/MM/YYYY'),'PE','BC',18,8);    
   
INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('18/04/2005','DD/MM/YYYY'),'TC','ML',20,2); 
   
INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('1/05/2005','DD/MM/YYYY'),'ZO','BN',21,3);    

INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('24/05/2005','DD/MM/YYYY'),'AT','FN',3,10);  

INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('24/05/2005','DD/MM/YYYY'),'AV','CI',19,2);
   
INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('13/06/2005','DD/MM/YYYY'),'AT','GC',9,2);  
   
INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('13/06/2005','DD/MM/YYYY'),'PA','HI',13,11);  

INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('16/06/2005','DD/MM/YYYY'),'FB','PI',16,8);  

INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('04/07/2005','DD/MM/YYYY'),'ZO','HI',11,5);  

INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('11/07/2005','DD/MM/YYYY'),'TI','PI',15,3);  

INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('16/07/2005','DD/MM/YYYY'),'FB','RD',18,3);  

INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('16/07/2005','DD/MM/YYYY'),'ZO','ML',4,11);  

INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('08/08/2005','DD/MM/YYYY'),'LO','DR',5,9);  

INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('08/08/2005','DD/MM/YYYY'),'PA','GC',11,4);  

INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('16/08/2005','DD/MM/YYYY'),'CA','CI',5,12);     

INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('16/08/2005','DD/MM/YYYY'),'VT','NV',17,3);  
   
INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('20/09/2005','DD/MM/YYYY'),'KN','RD',6,2);  
   
INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('20/09/2005','DD/MM/YYYY'),'PA','NV',16,3); 

INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('10/10/2005','DD/MM/YYYY'),'AT','MS',11,5);  
   
INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('10/10/2005','DD/MM/YYYY'),'VT','MS',20,7); 

INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('11/11/2005','DD/MM/YYYY'),'PE','SD',19,6); 

INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('12/11/2005','DD/MM/YYYY'),'PA','DR',12,4); 

INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('12/11/2005','DD/MM/YYYY'),'PE','BN',4,3); 

INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('19/11/2005','DD/MM/YYYY'),'CA','PI',17,8);    
   
INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('12/12/2005','DD/MM/YYYY'),'IL','GL',13,4);    
   
INSERT INTO Tranzactii (Data_comenzii ,Cod_client ,Cod_vanzator , Cod_produs, Cantitatea)
    VALUES (TO_DATE('12/12/2005','DD/MM/YYYY'),'TI','GI',3,2); 
    
COMMIT;