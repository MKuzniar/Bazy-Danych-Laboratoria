SELECT last_name, department_name, city 
FROM employees
FULL OUTER JOIN departments using (department_id)
FULL OUTER JOIN locations using (location_id)