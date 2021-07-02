SELECT c.country_name, count(e.employee_id) "Liczba pracownik�w"
FROM employees e
    JOIN departments d ON e.department_id = d.department_id
    JOIN locations l ON d.location_id = l.location_id
    JOIN countries c ON l.country_id = c.country_id
GROUP BY c.country_name