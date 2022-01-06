use employees;

-- Assignment using transaction
-- Create employee record
-- Create title record
-- Create employee department record
-- Create employee salary record

begin;
INSERT INTO employees SELECT max(emp_no) + 1, '1975-01-01', 'Charles', 'Santos', 'M', '2019-01-01' FROM employees;

SELECT * FROM employees WHERE first_name = 'Charles' and last_name = 'Santos';

INSERT INTO titles VALUES (500003, 'Developer', '2019-01-01', '9999-01-01');

INSERT INTO dept_emp VALUES (500003, 'd005', '2021-01-01', '9999-01-01');

INSERT INTO salaries VALUES (500003, 200000, '2021-01-01', '9999-01-01');

commit;

SELECT 
    first_name, last_name, title, dept_name, salary
FROM
    employees AS emp
        JOIN
    dept_emp AS de ON emp.emp_no = de.emp_no
        JOIN
    departments AS dept ON de.dept_no = dept.dept_no
        JOIN
    titles AS t ON t.emp_no = emp.emp_no
        JOIN
    salaries AS s ON s.emp_no = emp.emp_no
WHERE
    emp.emp_no = 500003;