SELECT d.department_name, count (e.employee_id) "Liczba pracownik�w"
FROM employees e 
    JOIN departments d ON d.department_id = e.department_id
GROUP BY d.department_name