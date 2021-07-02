SELECT last_name, salary
FROM employees 
WHERE salary > 0.9 * (SELECT salary
                FROM employees 
                WHERE last_name = 'Chen');