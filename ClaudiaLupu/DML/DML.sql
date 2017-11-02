DELETE FROM OFICII;
DELETE FROM COMPANII;
DELETE FROM ANGAJATI;
DELETE FROM PRODUSE;
DELETE FROM TRANZACTII;

INSERT INTO OFICII VALUES('BL', 'Beltsy', 'nord', 'ML');
INSERT INTO OFICII VALUES('C', 'Kishiew', 'centru', 'VD');
INSERT INTO OFICII VALUES('CH', 'Cahul', 'sud', 'HI');
INSERT INTO OFICII VALUES('ED', 'Edinets', 'nord', 'ML');
INSERT INTO OFICII VALUES('GL', 'Glodeni', 'nord', 'ML');
INSERT INTO OFICII VALUES('OR', 'Orhei', 'centru', 'LV');
INSERT INTO OFICII VALUES('RZ', 'Rezina', 'nord', 'SD');
INSERT INTO OFICII VALUES('SR', 'Soroca', 'nord', 'BN');
INSERT INTO OFICII VALUES('UN', 'Ungheni', 'centru', 'VD');

INSERT INTO COMPANII VALUES ('AL','Auto Lada', 'NV',7500.00);
INSERT INTO COMPANII VALUES ('AS','Asito', 'PI',26000.00);
INSERT INTO COMPANII VALUES ('AT','Astra', 'PI',14780.00);
INSERT INTO COMPANII VALUES ('AV','Avon', 'GC',12000.00);
INSERT INTO COMPANII VALUES ('BA','Basarabia', 'GC',0.00);
INSERT INTO COMPANII VALUES ('BI','Bizpro', 'PI',13050.00);
INSERT INTO COMPANII VALUES ('CA','Cascad', 'GL',2300.00);
INSERT INTO COMPANII VALUES ('FB','Floribel', 'GL',600.00);
INSERT INTO COMPANII VALUES ('FL','Floarea', 'GL',0.00);
INSERT INTO COMPANII VALUES ('IL','InLac', 'GI',1000.00);
INSERT INTO COMPANII VALUES ('KN','Knauf', 'PI',0.00);
INSERT INTO COMPANII VALUES ('LO','Luck Oil', 'NV',13000.00);
INSERT INTO COMPANII VALUES ('PA','Patria', 'DR',500.00);
INSERT INTO COMPANII VALUES ('PE','Petrom', 'NV',50000.00);
INSERT INTO COMPANII VALUES ('TC','TransCom', 'MS',6000.00);
INSERT INTO COMPANII VALUES ('TI','Tirex', 'NV',5000.00);
INSERT INTO COMPANII VALUES ('TU','Tutun Ind', 'GL',1000.00);
INSERT INTO COMPANII VALUES ('VT','Vitanta', 'GI',800.00);
INSERT INTO COMPANII VALUES ('ZO','Zorile', 'GT',22890.00);

INSERT INTO ANGAJATI VALUES ('BC','Bucataru','Constantin',31,'contabil','SR',TO_DATE('18.01.2001','dd.mm.yyyy'),0);
INSERT INTO ANGAJATI VALUES ('BN','Bucur','Nicolae',27,'manager','SR',TO_DATE('31.01.2001','dd.mm.yyyy'),28000);
INSERT INTO ANGAJATI VALUES ('CI','Cozma','Ion',20,'reprezentant','OR',TO_DATE('17.11.2001','dd.mm.yyyy'),2000);
INSERT INTO ANGAJATI VALUES ('DE','Dodon','Elena',34,'contabil','ED',TO_DATE('20.02.2000','dd.mm.yyyy'),0);
INSERT INTO ANGAJATI VALUES ('DR','Dutca','Radion',33,'reprezentant','GL',TO_DATE('12.12.1999','dd.mm.yyyy'),3250);
INSERT INTO ANGAJATI VALUES ('FE','Frumosu','Emilia',37,'contabil','ED',TO_DATE('12.02.1998','dd.mm.yyyy'),0);
INSERT INTO ANGAJATI VALUES ('FN','Florea','Nicoleta',23,'reprezentant','BL',TO_DATE('13.06.2000','dd.mm.yyyy'),2500);
INSERT INTO ANGAJATI VALUES ('GC','Grosu','Corina',19,'reprezentant','RZ',TO_DATE('04.04.2000','dd.mm.yyyy'),1900);
INSERT INTO ANGAJATI VALUES ('GI','Gomoja','Ilie',32,'reprezentant','CH',TO_DATE('13.07.2005','dd.mm.yyyy'),3250);
INSERT INTO ANGAJATI VALUES ('GL','Grosu','Leonid',23,'reprezentant','ED',TO_DATE('28.03.2000','dd.mm.yyyy'),2500);
INSERT INTO ANGAJATI VALUES ('GM','Grosu','Mihai',42,'sef','C',TO_DATE('07.02.1998','dd.mm.yyyy'),0);
INSERT INTO ANGAJATI VALUES ('GT','Graur','Teodor',35,'reprezentant','SR',TO_DATE('18.08.2004','dd.mm.yyyy'),35000);
INSERT INTO ANGAJATI VALUES ('HI','Harea','Igor',25,'manager','CH',TO_DATE('30.03.2003','dd.mm.yyyy'),22000);
INSERT INTO ANGAJATI VALUES ('LA','Lungu','Alexandru',43,'sef adjunct','C',TO_DATE('07.02.1998','dd.mm.yyyy'),0);
INSERT INTO ANGAJATI VALUES ('LV','Lisnic','Vladimir',29,'manager','OR',TO_DATE('13.09.2001','dd.mm.yyyy'),351);
INSERT INTO ANGAJATI VALUES ('ML','Mutu','Livia',38,'manager','BL',TO_DATE('09.02.19999','dd.mm.yyyy'),15000);
INSERT INTO ANGAJATI VALUES ('MS','Mutu','Sorina',35,'reprezentant','UN',TO_DATE('06.04.2004','dd.mm.yyyy'),3500);
INSERT INTO ANGAJATI VALUES ('NV','Nanu','Vasile',45,'reprezentant','C',TO_DATE('09.02.1998','dd.mm.yyyy'),4500);
INSERT INTO ANGAJATI VALUES ('PI','Prisacaru','Inga',27,'reprezentant','UN',TO_DATE('18.03.2001','dd.mm.yyyy'),2750);
INSERT INTO ANGAJATI VALUES ('RD','Rusu','Dorina',35,'reprezentant','OR',TO_DATE('18.09.2001','dd.mm.yyyy'),3500);
INSERT INTO ANGAJATI VALUES ('SA','Speriatu','Ana',31,'contabil','GL',TO_DATE('15.01.2003','dd.mm.yyyy'),0);
INSERT INTO ANGAJATI VALUES ('SD','Spada','Doru',29,'manager','RZ',TO_DATE('12.01.2003','dd.mm.yyyy'),18000);
INSERT INTO ANGAJATI VALUES ('SM','Surdu','Mihaela',25,'reprezentant','BL',TO_DATE('13.09.2001','dd.mm.yyyy'),20000);
INSERT INTO ANGAJATI VALUES ('VD','Vieru','Dorin',32,'manager','C',TO_DATE('08.08.1998','dd.mm.yyyy'),80000);
INSERT INTO ANGAJATI VALUES ('VI','Vrabie','Ion',42,'contabil','RZ',TO_DATE('18.10.2002','dd.mm.yyyy'),0);

INSERT INTO TRANZACTII VALUES (TO_DATE('01.01.2005','dd.mm.yyyy'),'BI','NV',7,5);
INSERT INTO TRANZACTII VALUES (TO_DATE('01.01.2005','dd.mm.yyyy'),'IL','PI',15,4);
INSERT INTO TRANZACTII VALUES (TO_DATE('03.01.2005','dd.mm.yyyy'),'VT','HI',14,12);
INSERT INTO TRANZACTII VALUES (TO_DATE('03.01.2005','dd.mm.yyyy'),'ZO','GL',12,3);
INSERT INTO TRANZACTII VALUES (TO_DATE('14.01.2005','dd.mm.yyyy'),'VT','BN',15,8);
INSERT INTO TRANZACTII VALUES (TO_DATE('18.01.2005','dd.mm.yyyy'),'TI','GL',12,3);
INSERT INTO TRANZACTII VALUES (TO_DATE('31.01.2005','dd.mm.yyyy'),'CA','GI',11,2);
INSERT INTO TRANZACTII VALUES (TO_DATE('31.01.2005','dd.mm.yyyy'),'VT','BN',14,9);
INSERT INTO TRANZACTII VALUES (TO_DATE('02.02.2005','dd.mm.yyyy'),'PE','SM',12,2);
INSERT INTO TRANZACTII VALUES (TO_DATE('11.02.2005','dd.mm.yyyy'),'LO','SM',2,3);
INSERT INTO TRANZACTII VALUES (TO_DATE('11.02.2005','dd.mm.yyyy'),'TI','FN',21,2);
INSERT INTO TRANZACTII VALUES (TO_DATE('22.02.2005','dd.mm.yyyy'),'TI','NV',13,2);
INSERT INTO TRANZACTII VALUES (TO_DATE('02.03.2005','dd.mm.yyyy'),'AL','LV',17,2);
INSERT INTO TRANZACTII VALUES (TO_DATE('03.03.2005','dd.mm.yyyy'),'FL','PI',11,3);
INSERT INTO TRANZACTII VALUES (TO_DATE('04.03.2005','dd.mm.yyyy'),'TI','SD',14,3);
INSERT INTO TRANZACTII VALUES (TO_DATE('12.03.2005','dd.mm.yyyy'),'FL','PI',8,1);
INSERT INTO TRANZACTII VALUES (TO_DATE('12.03.2005','dd.mm.yyyy'),'VT','GI',14,4);
INSERT INTO TRANZACTII VALUES (TO_DATE('26.03.2005','dd.mm.yyyy'),'AS','GC',8,3);
INSERT INTO TRANZACTII VALUES (TO_DATE('26.03.2005','dd.mm.yyyy'),'PA','SD',12,10);
INSERT INTO TRANZACTII VALUES (TO_DATE('04.04.2005','dd.mm.yyyy'),'AT','DR',11,5);
INSERT INTO TRANZACTII VALUES (TO_DATE('14.04.2005','dd.mm.yyyy'),'FL','SM',13,3);
INSERT INTO TRANZACTII VALUES (TO_DATE('18.04.2005','dd.mm.yyyy'),'AS','LV',3,1);
INSERT INTO TRANZACTII VALUES (TO_DATE('18.04.2005','dd.mm.yyyy'),'PE','BC',18,8);
INSERT INTO TRANZACTII VALUES (TO_DATE('18.04.2005','dd.mm.yyyy'),'TC','ML',20,2);
INSERT INTO TRANZACTII VALUES (TO_DATE('01.05.2005','dd.mm.yyyy'),'ZO','BN',21,3);
INSERT INTO TRANZACTII VALUES(TO_DATE('24.05.2005','dd.mm.yyyy'),'AT','FN',3,10);
INSERT INTO TRANZACTII VALUES(TO_DATE('24.05.2005','dd.mm.yyyy'),'AV','CI',19,2);
INSERT INTO TRANZACTII VALUES(TO_DATE('13.06.2005','dd.mm.yyyy'),'AT','GC',9,2);
INSERT INTO TRANZACTII VALUES(TO_DATE('13.06.2005','dd.mm.yyyy'),'PA','HI',13,11);
INSERT INTO TRANZACTII VALUES(TO_DATE('16.06.2005','dd.mm.yyyy'),'FB','PI',16,8);
INSERT INTO TRANZACTII VALUES(TO_DATE('04.07.2005','dd.mm.yyyy'),'ZO','HI',11,5);
INSERT INTO TRANZACTII VALUES(TO_DATE('11.07.2005','dd.mm.yyyy'),'TI','PI',15,3);
INSERT INTO TRANZACTII VALUES(TO_DATE('16.07.2005','dd.mm.yyyy'),'FB','RD',18,3);
INSERT INTO TRANZACTII VALUES(TO_DATE('16.07.2005','dd.mm.yyyy'),'ZO','ML',4,11);
INSERT INTO TRANZACTII VALUES(TO_DATE('08.08.2005','dd.mm.yyyy'),'LO','DR',5,9);
INSERT INTO TRANZACTII VALUES(TO_DATE('08.08.2005','dd.mm.yyyy'),'PA','GC',11,4);
INSERT INTO TRANZACTII VALUES(TO_DATE('16.08.2005','dd.mm.yyyy'),'CA','CI',5,12);
INSERT INTO TRANZACTII VALUES(TO_DATE('16.08.2005','dd.mm.yyyy'),'VT','NV',17,3);
INSERT INTO TRANZACTII VALUES(TO_DATE('20.09.2005','dd.mm.yyyy'),'KN','RD',6,2);
INSERT INTO TRANZACTII VALUES(TO_DATE('20.09.2005','dd.mm.yyyy'),'PA','NV',16,3);
INSERT INTO TRANZACTII VALUES(TO_DATE('10.10.2005','dd.mm.yyyy'),'AT','MS',11,5);
INSERT INTO TRANZACTII VALUES(TO_DATE('10.10.2005','dd.mm.yyyy'),'VT','MS',20,7);
INSERT INTO TRANZACTII VALUES(TO_DATE('11.11.2005','dd.mm.yyyy'),'PE','SD',19,6);
INSERT INTO TRANZACTII VALUES(TO_DATE('12.11.2005','dd.mm.yyyy'),'PA','DR',12,4);
INSERT INTO TRANZACTII VALUES(TO_DATE('12.11.2005','dd.mm.yyyy'),'PE','BN',4,3);
INSERT INTO TRANZACTII VALUES(TO_DATE('19.11.2005','dd.mm.yyyy'),'CA','PI',17,8);
INSERT INTO TRANZACTII VALUES(TO_DATE('12.12.2005','dd.mm.yyyy'),'IL','GL',13,4);
INSERT INTO TRANZACTII VALUES(TO_DATE('12.12.2005','dd.mm.yyyy'),'TI','GI',3,2);

COMMIT;


