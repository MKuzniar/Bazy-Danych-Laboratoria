SELECT d.department_name, e.last_name, e.salary 
FROM departments d, employees e 
WHERE d.department_id=e.department_id
    AND e.salary > 12000 
ORDER BY e.salary DESC