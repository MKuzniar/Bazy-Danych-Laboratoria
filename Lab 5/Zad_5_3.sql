/*5.3. Usu� z tabeli employees pracownika, kt�ry nie ma przypisanego numeru telefonu.*/

DELETE FROM employees
WHERE phone_number IS NULL;