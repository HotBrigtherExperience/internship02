DELETE Oficii;
DELETE Angajati;
--inserare tabela Oficii

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
   

--inserare tabela Angajati
    
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Data_angajarii, Suma_planificata)
    VALUES ('BC','Bucataru','Constantin',31,'contabil',TO_DATE('18/01/2001','DD/MM/YYYY'),0);
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Data_angajarii, Suma_planificata)
    VALUES ('BN','Bucur','Nicolae',27,'manager',TO_DATE('31/01/2001','DD/MM/YYYY'),28000); 
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Data_angajarii, Suma_planificata)
    VALUES ('CI','Cozma','Ion',20,'reprezentatnt',TO_DATE('17/11/2001','DD/MM/YYYY'),2000);
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Data_angajarii, Suma_planificata)
    VALUES ('DE','Dodon','Elena',34,'contabil',TO_DATE('20/02/2000','DD/MM/YYYY'),0);    
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Data_angajarii, Suma_planificata)
    VALUES ('DR','Dutca','Radion',33,'reprezentatnt',TO_DATE('12/12/1999','DD/MM/YYYY'),3250);
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Data_angajarii, Suma_planificata)
    VALUES ('FE','Frumosu','Emilia',37,'contabil',TO_DATE('12/02/1998','DD/MM/YYYY'),0); 
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Data_angajarii, Suma_planificata)
    VALUES ('FN','Florea','Nicoleta',23,'reprezentatnt',TO_DATE('13/06/2000','DD/MM/YYYY'),2500);
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Data_angajarii, Suma_planificata)
    VALUES ('GC','Grosu','Corina',19,'reprezentatnt',TO_DATE('04/04/2000','DD/MM/YYYY'),1900);   
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Data_angajarii, Suma_planificata)
    VALUES ('GI','Gomoja','Ilie',32,'reprezentatnt',TO_DATE('13/07/2005','DD/MM/YYYY'),3250);
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Data_angajarii, Suma_planificata)
    VALUES ('GL','Grosu','Leonid',23,'reprezentatnt',TO_DATE('28/03/2000','DD/MM/YYYY'),2500); 
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Data_angajarii, Suma_planificata)
    VALUES ('GM','Grosu','Mihai',42,'sef',TO_DATE('07/02/1998','DD/MM/YYYY'),0);
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Data_angajarii, Suma_planificata)
    VALUES ('GT','Graur','Teodor',35,'reprezentatnt',TO_DATE('18/08/2004','DD/MM/YYYY'),35000);    
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Data_angajarii, Suma_planificata)
    VALUES ('HI','Harea','Igor',25,'manager',TO_DATE('30/03/2003','DD/MM/YYYY'),22000);
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Data_angajarii, Suma_planificata)
    VALUES ('LA','Lungu','Alexandru',43,'sef adjunc',TO_DATE('07/02/1998','DD/MM/YYYY'),0); 
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Data_angajarii, Suma_planificata)
    VALUES ('LV','Lisnic','Vladimir',29,'manager',TO_DATE('13/09/2001','DD/MM/YYYY'),351);
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Data_angajarii, Suma_planificata)
    VALUES ('ML','Mutu','Livia',38,'manager',TO_DATE('09/02/1999','DD/MM/YYYY'),15000);   
    
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Data_angajarii, Suma_planificata)
    VALUES ('MS','Mutu','Sorina',35,'reprezentatnt',TO_DATE('06/04/2004','DD/MM/YYYY'),3500);    
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Data_angajarii, Suma_planificata)
    VALUES ('NV','Nanu','Vasile',45,'reprezentatnt',TO_DATE('09/02/1998','DD/MM/YYYY'),4500);
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Data_angajarii, Suma_planificata)
    VALUES ('PI','Prisacaru','Inga',27,'reprezentatnt',TO_DATE('18/03/2001','DD/MM/YYYY'),2750); 
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Data_angajarii, Suma_planificata)
    VALUES ('RD','Rusu','Dorina',35,'reprezentatnt',TO_DATE('18/09/2001','DD/MM/YYYY'),3500);
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Data_angajarii, Suma_planificata)
    VALUES ('SA','Speriatu','Ana',31,'contabil',TO_DATE('15/01/2003','DD/MM/YYYY'),18000);    
     
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Data_angajarii, Suma_planificata)
    VALUES ('SD','Spada','Doru',29,'manager',TO_DATE('12/01/2003','DD/MM/YYYY'),18000);
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Data_angajarii, Suma_planificata)
    VALUES ('SM','Surdu','Mihaiela',25,'reprezentatnt',TO_DATE('12/03/2000','DD/MM/YYYY'),20000); 
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Data_angajarii, Suma_planificata)
    VALUES ('VD','Vieru','Dorin',32,'manager',TO_DATE('08/02/1998','DD/MM/YYYY'),80000);
   
INSERT INTO Angajati (Cod_angajat ,Nume ,Prenume , Varsta, Functia, Data_angajarii, Suma_planificata)
    VALUES ('VI','Vrabie','Ion',42,'contabil',TO_DATE('18/10/2002','DD/MM/YYYY'),0); 
    
--UPDATE tabela Oficii

UPDATE   Oficii  SET Cod_manager='ML' WHERE  Cod_oficiu='BL';

UPDATE   Oficii  SET Cod_manager='VD' WHERE  Cod_oficiu= 'C';

UPDATE   Oficii  SET Cod_manager='HI' WHERE  Cod_oficiu='CH';
   
UPDATE   Oficii  SET Cod_manager='ML' WHERE  Cod_oficiu='ED';
   
UPDATE   Oficii  SET Cod_manager='ML' WHERE  Cod_oficiu='GL';
   
UPDATE   Oficii  SET Cod_manager='LV' WHERE  Cod_oficiu='OR';
   
UPDATE   Oficii  SET Cod_manager='SD' WHERE  Cod_oficiu='RZ'; 
   
UPDATE   Oficii  SET Cod_manager='BN' WHERE  Cod_oficiu='SR';
   
UPDATE   Oficii  SET Cod_manager='VD' WHERE  Cod_oficiu='UN';
   

--UPDATE tabela Angajati
    
UPDATE   Angajati  SET Cod_oficiu='SR' WHERE Cod_angajat='BC';
   
UPDATE   Angajati  SET Cod_oficiu='SR' WHERE Cod_angajat='BN'; 
   
UPDATE   Angajati  SET Cod_oficiu='OR' WHERE Cod_angajat='CI';
   
UPDATE   Angajati  SET Cod_oficiu='ED' WHERE Cod_angajat='DE';    
   
UPDATE   Angajati  SET Cod_oficiu='GL' WHERE Cod_angajat='DR';
   
UPDATE   Angajati  SET Cod_oficiu='ED' WHERE Cod_angajat='FE'; 
   
UPDATE   Angajati  SET Cod_oficiu='BL' WHERE Cod_angajat='FN';
   
UPDATE   Angajati  SET Cod_oficiu='RZ' WHERE Cod_angajat='GC';   
   
UPDATE   Angajati  SET Cod_oficiu='CH' WHERE Cod_angajat='GI';
   
UPDATE   Angajati  SET Cod_oficiu='ED' WHERE Cod_angajat='GL'; 
    
UPDATE   Angajati  SET Cod_oficiu='C'  WHERE Cod_angajat='GM';
   
UPDATE   Angajati  SET Cod_oficiu='SR' WHERE Cod_angajat='GT';    
   
UPDATE   Angajati  SET Cod_oficiu='CH' WHERE Cod_angajat='HI';
   
UPDATE   Angajati  SET Cod_oficiu='C'  WHERE Cod_angajat='LA'; 
   
UPDATE   Angajati  SET Cod_oficiu='OR' WHERE Cod_angajat='LV';
   
UPDATE   Angajati  SET Cod_oficiu='BL' WHERE Cod_angajat='ML';   
    
UPDATE   Angajati  SET Cod_oficiu='UN' WHERE Cod_angajat='MS';    
   
UPDATE   Angajati  SET Cod_oficiu='C'  WHERE Cod_angajat='NV';
   
UPDATE   Angajati  SET Cod_oficiu='UN' WHERE Cod_angajat='PI'; 
   
UPDATE   Angajati  SET Cod_oficiu='OR' WHERE Cod_angajat='RD';
   
UPDATE   Angajati  SET Cod_oficiu='GL' WHERE Cod_angajat='SA';    
     
UPDATE   Angajati  SET Cod_oficiu='RZ' WHERE Cod_angajat='SD';
   
UPDATE   Angajati  SET Cod_oficiu='BL' WHERE Cod_angajat='SM'; 
   
UPDATE   Angajati  SET Cod_oficiu='C'  WHERE Cod_angajat='VD';
   
UPDATE   Angajati  SET Cod_oficiu='RZ' WHERE Cod_angajat='VI'; 
 

