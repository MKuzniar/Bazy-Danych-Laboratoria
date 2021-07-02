SELECT d.department_name, e.last_name, e.salary 
FROM departments d 
JOIN employees e ON d.department_id = e.department_id
WHERE e.salary > 12000 
ORDER BY e.salary DESC