select  * from (
   select cod_oficiu, nume,
    row_number() over (partition by cod_oficiu order by nume) as rn
   from intern_ap.angajati
) 
 pivot 
( min(nume)
  for cod_oficiu in ('BL','C','CH','ED','GL','OR','RZ','SR','UN'));
  