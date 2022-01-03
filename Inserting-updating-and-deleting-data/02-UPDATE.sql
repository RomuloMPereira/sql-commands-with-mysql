use employees;

SELECT * FROM departments WHERE dept_no = 'd999';

UPDATE departments SET dept_name = 'Social Media Marketing' WHERE dept_no = 'd999';


-- Assignment - Update Statement to change employee name
SELECT * FROM employees WHERE first_name = 'Jessie' and last_name = 'Porter';

UPDATE employees SET first_name = 'Sam', last_name = 'Axe' WHERE emp_no = 500001;

SELECT * FROM employees WHERE emp_no = 500001;

-- Assignment - Insert new salary record and update to_date of previous record

SELECT * FROM employees WHERE first_name = 'Sam';
SELECT * FROM salaries WHERE emp_no = 500001;

INSERT INTO salaries VALUES (500001, 140000, '2019-01-01', '9999-01-01');

UPDATE salaries SET to_date = '2019-01-01', from_date = '2018-01-01' WHERE emp_no = 500001;