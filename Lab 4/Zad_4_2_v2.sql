SELECT last_name, salary
FROM employees 
WHERE salary > ANY (SELECT salary
                    FROM employees
                    JOIN departments USING (department_id)
                    WHERE department_name = 'Marketing');