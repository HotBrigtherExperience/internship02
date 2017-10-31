DELETE FROM OFICII;

INSERT INTO OFICII 
    VALUES ('BL','Beltsy','nord','ML');
INSERT INTO OFICII 
    VALUES ('C','Kishinew','centru','VD');
INSERT INTO OFICII 
    VALUES ('CH','Cahul','sud','HI');
INSERT INTO OFICII 
    VALUES ('ED','Edinets','nord','ML');
INSERT INTO OFICII 
    VALUES ('GL','Glodeni','nord','ML');
INSERT INTO OFICII 
    VALUES ('OR','Orhei','centru','LV');
INSERT INTO OFICII 
    VALUES ('RZ','Rezina','nord','SD');
INSERT INTO OFICII 
    VALUES ('SR','Soroca','nord','BN');
INSERT INTO OFICII 
    VALUES ('UN','Ungheni','centru','VD');
    
DELETE FROM COMPANII;

INSERT INTO COMPANII 
    VALUES('AL','Auto Lada','NV',7500.00);
INSERT INTO COMPANII 
    VALUES('AS','Asito','PI',26000.00);
INSERT INTO COMPANII 
    VALUES('AT','Astra','PI',14780.00);
INSERT INTO COMPANII 
    VALUES('AV','Avon','GC',12000.00);
INSERT INTO COMPANII 
    VALUES('BA','Basarabia','GC',0.00);
INSERT INTO COMPANII 
    VALUES('BI','Bizpro','PI',13050.00);
INSERT INTO COMPANII 
    VALUES('CA','Cascad','GI',123000.00);
INSERT INTO COMPANII 
    VALUES('FB','Floribel','GL',600.00);
INSERT INTO COMPANII 
    VALUES('FL','Floarea','GL',0.00);
INSERT INTO COMPANII 
    VALUES('IL','InLac','GI',1000.00);
INSERT INTO COMPANII 
    VALUES('KN','Knauf','PI',0.00);
INSERT INTO COMPANII 
    VALUES('LO','Luck Oil','NV',13000.00);
INSERT INTO COMPANII 
    VALUES('PA','Patria','DR',500.00);
INSERT INTO COMPANII 
    VALUES('PE','Petrom','NV',50000.00);
INSERT INTO COMPANII 
    VALUES('TC','TransCom','GL',6000.00);
INSERT INTO COMPANII 
    VALUES('TI','Tirex','NV',5000.00);
INSERT INTO COMPANII 
    VALUES('TU','Tutun Ind','GL',1000.00);
INSERT INTO COMPANII
    VALUES('VT','Vitanta','GI',800.00);
INSERT INTO COMPANII 
    VALUES('ZO','Zorile','GT',22890.00);
DELETE FROM ANAJATI;

INSERT INTO ANGAJATI 
    VALUES ('BC','Bucataru','Constantin',31,'contabil','SR',to_date('19.01.2001','dd.mm.yyyy'),0);
INSERT INTO ANGAJATI 
    VALUES ('BN','Bucur','Nicolae',27,'manager','SR',to_date('31.01.2001','dd.mm.yyyy'),28000);
INSERT INTO ANGAJATI 
    VALUES ('CI','Cozma','Ion',20,'reprezentant','OR',to_date('17.11.2001','dd.mm.yyyy'),2000);
INSERT INTO ANGAJATI 
    VALUES ('DE','Dodon','Elena',34,'contabil','ED',to_date('20.02.2001','dd.mm.yyyy'),0);
INSERT INTO ANGAJATI 
    VALUES ('DR','Dutca','Radion',33,'reprezentant','GL',to_date('12.12.1999','dd.mm.yyyy'),3250);
INSERT INTO ANGAJATI 
    VALUES ('FE','Frumosu','Emilia',37,'contabil','ED',to_date('12.12.1999','dd.mm.yyyy'),0);
INSERT INTO ANGAJATI 
    VALUES ('FN','Florea','Nicoleta',23,'reprezentant','BL',to_date('13.06.2000','dd.mm.yyyy'),2500);
INSERT INTO ANGAJATI 
    VALUES ('GC','Grosu','Corina',19,'reprezentant','RZ',to_date('04.04.2000','dd.mm.yyyy'),1900);
INSERT INTO ANGAJATI 
    VALUES ('GI','Gomoja','Ilie',32,'reprezentant','CH',to_date('13.07.2005','dd.mm.yyyy'),3250);
INSERT INTO ANGAJATI
    VALUES ('GL','Grosu','Leonid',23,'reprezentant','ED',to_date('28.03.2000','dd.mm.yyyy'),2500);
INSERT INTO ANGAJATI 
    VALUES ('GM','Grosu','Mihai',42,'sef','C',to_date('07.02.1998','dd.mm.yyyy'),0);
INSERT INTO ANGAJATI 
    VALUES ('GT','Graur','Teodor',35,'reprezentant','SR',to_date('18.08.2004','dd.mm.yyyy'),35000);
INSERT INTO ANGAJATI 
    VALUES ('HI','Harea','Igor',25,'manager','CH',to_date('30.03.2003','dd.mm.yyyy'),22000);
INSERT INTO ANGAJATI 
    VALUES ('LA','Lungu','Alexandru',43,'sef adjunct','C',to_date('07.02.1998','dd.mm.yyyy'),0);
INSERT INTO ANGAJATI 
    VALUES ('LV','Lisnic','Vladimir',29,'manager','OR',to_date('13.09.2001','dd.mm.yyyy'),351);
INSERT INTO ANGAJATI 
    VALUES ('ML','Mutu','Livia',38,'manager','BL',to_date('09.02.1998','dd.mm.yyyy'),4500);
INSERT INTO ANGAJATI 
    VALUES ('MS','Mutu','Sorina',35,'reprezentant','UN',to_date('06.04.2004','dd.mm.yyyy'),3500);
INSERT INTO ANGAJATI 
    VALUES ('NV','Nanu','Vasile',45,'reprezentant','C',to_date('09.02.1998','dd.mm.yyyy'),4500);
INSERT INTO ANGAJATI 
    VALUES ('PI','Prisacaru','Inga',27,'reprezentant','UN',to_date('18.03.2001','dd.mm.yyyy'),2750);
INSERT INTO ANGAJATI 
    VALUES ('RD','Rusu','Dorina',35,'reprezentant','OR',to_date('18.09.2001','dd.mm.yyyy'),3500);
INSERT INTO ANGAJATI 
    VALUES ('SA','Speriatu','Ana',31,'contabil','GL',to_date('15.01.2003','dd.mm.yyyy'),0);
INSERT INTO ANGAJATI 
    VALUES ('SD','Spada','Doru',29,'manager','RZ',to_date('12.01.2003','dd.mm.yyyy'),18000);
INSERT INTO ANGAJATI 
    VALUES ('SM','Surdu','Mihaela',25,'reprezentant','BL',to_date('12.03.2000','dd.mm.yyyy'),20000);
INSERT INTO ANGAJATI 
    VALUES ('VD','Vieru','Dorin',32,'manager','C',to_date('08.02.1998','dd.mm.yyyy'),80000);
INSERT INTO ANGAJATI 
    VALUES ('VI','Vrabie','Ion',42,'contabil','RZ',to_date('18.10.2002','dd.mm.yyyy'),0);
    

