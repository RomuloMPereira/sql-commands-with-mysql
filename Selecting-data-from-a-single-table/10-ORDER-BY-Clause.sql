use employees;

SELECT * FROM salaries ORDER BY salary;
SELECT * FROM salaries ORDER BY salary ASC;

SELECT * FROM salaries ORDER BY salary DESC;
SELECT * FROM salaries ORDER BY from_date, salary DESC;

SELECT * FROM employees ORDER BY first_name;

SELECT * FROM employees WHERE first_name = 'Elvis' ORDER BY birth_date;

SELECT * FROM employees WHERE first_name = 'Elvis' ORDER BY gender, birth_date DESC;

SELECT * FROM employees WHERE first_name = 'Elvis' ORDER BY gender DESC, birth_date DESC;