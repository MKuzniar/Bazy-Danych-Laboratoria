SELECT last_name, salary, ROUND((SELECT AVG(salary)
                                FROM employees
                                WHERE department_id = 
                                e.department_id),2) avg_salary
FROM employees e;
