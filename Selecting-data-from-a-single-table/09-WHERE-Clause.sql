use employees;

SELECT * FROM employees WHERE first_name = 'Elvis';

SELECT * FROM employees WHERE first_name != 'Elvis';
SELECT * FROM employees WHERE first_name <> 'Elvis';

SELECT count(*) FROM employees WHERE first_name = 'Elvis';

SELECT * FROM employees WHERE first_name = 'Elvis' AND gender = 'M';
SELECT count(*) FROM employees WHERE first_name = 'Elvis' AND gender = 'M';

SELECT * FROM employees WHERE first_name = 'Elvis' AND last_name = 'Velasco';
SELECT * FROM employees WHERE first_name = 'Elvis' OR last_name = 'Velasco';

SELECT * FROM employees WHERE first_name IN ('Elvis');
SELECT * FROM employees WHERE first_name IN ('Elvis', 'Sumant', 'Berni', 'Lillian');
SELECT count(*) FROM employees WHERE first_name IN ('Elvis', 'Sumant', 'Berni', 'Lillian');
SELECT count(*) FROM employees WHERE first_name IN ('Elvis', 'Sumant', 'Berni', 'Lillian')
	AND last_name NOT IN ('Redmiles', 'Haddadi', 'Demeyer', 'Restivo');
    
SELECT * FROM titles WHERE to_date IS NULL;
SELECT * FROM titles WHERE to_date IS NOT NULL;

SELECT * FROM salaries;
SELECT * FROM salaries WHERE salary > 66961;
SELECT count(*) FROM salaries WHERE salary > 66961;
SELECT count(*) FROM salaries WHERE salary < 66961;
SELECT count(*) FROM salaries WHERE salary > 66961 AND from_date > '1989-06-25';

SELECT * FROM employees WHERE first_name > 'Sam';
