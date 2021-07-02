SELECT e.last_name, ROUND(100*(e.salary/((j.max_salary+j.min_salary)/2))) as Wyp³ata_proc
FROM employees e
    NATURAL JOIN jobs j
ORDER BY  ROUND(100*(e.salary/((j.max_salary+j.min_salary)/2))) DESC