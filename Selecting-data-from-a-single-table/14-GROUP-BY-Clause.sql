use employees;

SELECT first_name, count(*) FROM employees GROUP BY first_name;

SELECT birth_date, count(*) FROM employees GROUP BY birth_date;

SELECT salary, count(*) as salary_count FROM salaries GROUP BY salary ORDER BY salary_count;

SELECT salary, count(*) as salary_count FROM salaries GROUP BY salary ORDER BY salary_count DESC;