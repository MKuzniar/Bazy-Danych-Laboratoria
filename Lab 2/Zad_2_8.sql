SELECT COUNT(*) "Liczba pracowników", manager_id "Numer kierownika" FROM employees GROUP BY manager_id ORDER BY "Liczba pracowników" DESC;