SELECT l.city, count(e.employee_id) as Liczba_pracownik�w
FROM employees e 
    JOIN departments d USING (department_id)
    JOIN locations l USING (location_id)
    JOIN jobs j USING (job_id)
WHERE e.salary > 0.8 * j.max_salary
GROUP BY l.city
