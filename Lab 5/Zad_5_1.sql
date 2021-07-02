/*5.1. Dodaj do tabeli employees pracownika o numerze (employee_id) 10, nazwisku (last_name) 
'Kovalsky', emailu (email) 'Koval',  dacie zatrudnienia (hire_date) '10/10/10' oraz numerze 
stanowiska (job_id) takim samym, jak pracownik który zarabia najwiêcej w firmie.*/

INSERT INTO employees (employee_id, last_name, email, hire_date, job_id)
VALUES(10,'Kovalsky','Koval','10/10/10', (SELECT job_id
                                         FROM employees
                                         WHERE salary = (SELECT MAX(salary)
                                         FROM employees)));