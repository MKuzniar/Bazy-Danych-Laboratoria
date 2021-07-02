SELECT department_name, COUNT(employee_id) AS Liczba_pracownikow
FROM departments
JOIN employees USING (department_id)
GROUP BY department_name
HAVING COUNT(employee_id) > (SELECT COUNT(employee_id)
                            FROM employees
                            JOIN departments USING (department_id)
                            WHERE department_name = 'Sales');