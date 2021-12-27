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

SELECT * FROM employees WHERE first_name LIKE 'E%';
SELECT * FROM employees WHERE first_name LIKE 'Elv%' AND last_name LIKE '_e%';
SELECT * FROM employees WHERE first_name LIKE 'Elv%' AND last_name NOT LIKE '%n';

SELECT count(*) FROM salaries WHERE salary >= 66074 AND salary <= 71046;
SELECT count(*) FROM salaries WHERE salary BETWEEN 66074 AND 71046;

SELECT count(*) FROM employees WHERE birth_date BETWEEN '1954-01-01' AND '1956-01-01'; 
SELECT count(*) FROM employees WHERE birth_date NOT BETWEEN '1954-01-01' AND '1956-01-01'; 

