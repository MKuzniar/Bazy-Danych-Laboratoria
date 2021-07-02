/*5.2. Zmodyfikuj w tabeli employees pracownika o numerze (employee_id) 10, 
dodaj�c mu pensj� (salary) o warto�ci �redniej pensji pracownik�w, 
kt�rych nazwisko (last_name) rozpoczyna si� od litery K.*/

UPDATE employees
SET salary = (SELECT AVG(salary)
              FROM employees
              WHERE last_name LIKE 'K%')
WHERE employee_id = 10;