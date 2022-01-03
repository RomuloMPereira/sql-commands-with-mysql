use employees;

SELECT * FROM departments WHERE dept_no = 'd999';

UPDATE departments SET dept_name = 'Social Media Marketing' WHERE dept_no = 'd999';


-- Assignment - Update Statement to change employee name
SELECT * FROM employees WHERE first_name = 'Jessie' and last_name = 'Porter';

UPDATE employees SET first_name = 'Sam', last_name = 'Axe' WHERE emp_no = 500001;

SELECT * FROM employees WHERE emp_no = 500001;