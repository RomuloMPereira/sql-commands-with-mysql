use employees;

begin;

INSERT INTO employees SELECT max(emp_no) + 1, '1975-01-01', 'Ronaldo', 'Meira', 'M', '2021-12-31' FROM employees;

SELECT * FROM employees WHERE first_name = 'Ronaldo' and last_name = 'Meira';

UPDATE employees SET first_name = 'Lucas', last_name = 'Santos' WHERE emp_no = 500002;

SELECT * FROM employees WHERE emp_no = 500002;

DELETE FROM employees WHERE emp_no = 500002;

commit;
rollback;

set autocommit=0;
set autocommit=1;