SELECT job_id "Kod stanowiska", MIN(salary) "Najmniejsza wyp�ata pracownika", MAX(salary) "Najwi�ksza wyp�ata pracownika", AVG(salary) "�rednia wyp�ata pracownika" FROM employees WHERE salary > 5000 GROUP BY job_id ORDER BY "Najmniejsza wyp�ata pracownika" ASC;