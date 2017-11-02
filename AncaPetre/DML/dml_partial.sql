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
 
COMMIT;