/*5.2. Zmodyfikuj w tabeli employees pracownika o numerze (employee_id) 10, 
dodaj¹c mu pensjê (salary) o wartoœci œredniej pensji pracowników, 
których nazwisko (last_name) rozpoczyna siê od litery K.*/

UPDATE employees
SET salary = (SELECT AVG(salary)
              FROM employees
              WHERE last_name LIKE 'K%')
WHERE employee_id = 10;