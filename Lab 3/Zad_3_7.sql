SELECT d.department_name, count(e.employee_id) as Liczba_pracownik�w
FROM employees e
    NATURAL JOIN departments d
GROUP BY d.department_name
HAVING count(e.employee_id) > 5