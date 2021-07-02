SELECT e2.last_name as Nazwisko_Pracownika, e1.last_name as Nazwisko_Kierownika
FROM employees e1 
    JOIN employees e2 ON e1.employee_id = e2.manager_id 
ORDER BY e2.manager_id ASC;