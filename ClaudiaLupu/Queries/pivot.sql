SELECT *
FROM (SELECT row_number() OVER (ORDER BY nume) nr, cod_oficiu, nume FROM angajati)
PIVOT
(
MIN(nume)
FOR cod_oficiu IN ('SR','C', 'UN','ED','CH','GL','BL','RZ','OR')
)
ORDER BY nr;