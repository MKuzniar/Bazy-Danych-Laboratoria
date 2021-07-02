SELECT city,ROUND(AVG (salary),2) as Srednia_pensja
FROM employees
JOIN departments USING (department_id)
JOIN locations USING (location_id)
GROUP BY city
HAVING AVG (salary) > (SELECT NVL(MAX(salary),0)
                        FROM employees
                        JOIN departments USING (department_id)
                        JOIN locations USING (location_id)
                        WHERE city = 'London')