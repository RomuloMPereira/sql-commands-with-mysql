use employees;

SELECT first_name, count(*) as emp_count FROM employees GROUP BY first_name HAVING emp_count > 275;

SELECT 
    salary, COUNT(*) AS salary_count
FROM
    salaries
WHERE from_date > '1994-06-24'
GROUP BY salary
HAVING salary_count > 100
ORDER BY salary_count ASC;