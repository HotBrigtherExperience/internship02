SELECT  'Total angajati: '|| COUNT( ANGAJATI) as Rezultat
FROM (  SELECT COUNT(AG.COD_ANGAJAT) ANGAJATI
        FROM ANGAJATI AG, TRANZACTII TR
        WHERE AG.COD_ANGAJAT = TR.COD_VANZATOR AND TR.DATA_COMENZII BETWEEN (TO_DATE('01.01.2005','dd.mm.yyyy')) AND (TO_DATE('28.02.2005','dd.mm.yyyy'))
        GROUP BY TR.DATA_COMENZII);


SELECT PR.COD_PRODUS, PR.DESCRIERE, COUNT(TR.COD_PRODUS) NUMAR_VANZARI
FROM PRODUSE PR
LEFT JOIN TRANZACTII TR ON PR.COD_PRODUS = TR.COD_PRODUS AND EXTRACT (YEAR FROM TR.DATA_COMENZII) = '2005' 
GROUP BY PR.COD_PRODUS, PR.DESCRIERE
ORDER BY PR.COD_PRODUS;


SELECT NUME ||' '|| PRENUME ANGAJAT, COMENZI
FROM (SELECT AG.NUME, AG.PRENUME, COUNT(TR.DATA_COMENZII) COMENZI
      FROM TRANZACTII TR, ANGAJATI AG 
      WHERE  TR.COD_VANZATOR = AG.COD_ANGAJAT
      GROUP BY AG.NUME, AG.PRENUME
      ORDER BY COMENZI DESC)
WHERE ROWNUM =1;






