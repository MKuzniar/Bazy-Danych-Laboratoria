/*5.3. Usuñ z tabeli employees pracownika, który nie ma przypisanego numeru telefonu.*/

DELETE FROM employees
WHERE phone_number IS NULL;