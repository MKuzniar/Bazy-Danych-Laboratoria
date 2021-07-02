SELECT e1.last_name, department_name, e1.salary
FROM employees e1
JOIN departments d1 
ON(e1.department_id = d1.department_id)
WHERE salary IN (SELECT MAX(salary)
                FROM employees 
                WHERE department_id = e1.department_id);
