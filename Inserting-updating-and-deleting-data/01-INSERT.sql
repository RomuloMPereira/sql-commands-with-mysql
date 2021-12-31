use employees;

INSERT INTO departments VALUES ('d999', 'Awesome Gurus');
INSERT INTO departments (dept_no, dept_name)  VALUES ('d998', 'Awesome Gurus 2');

INSERT INTO employees SELECT max(emp_no) + 1, '1988-01-01', 'Bruno', 'Silva', 'M', '2021-12-31' FROM employees;

-- Assignment
-- Craete employee record
-- Create title record
-- Create employee department record
-- Create employee salary record

INSERT INTO employees SELECT max(emp_no) + 1, '1985-01-01', 'Jessie', 'Porter', 'M', '2018-01-01' FROM employees;

INSERT INTO titles VALUES (500001, 'Staff', '2018-01-01', '9999-01-01');

INSERT INTO dept_emp VALUES (500001, 'd005', '2021-01-01', '9999-01-01');

INSERT INTO salaries VALUES (500001, 70000, '2021-01-01', '9999-01-01');

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
    first_name = 'Jessie'
        AND last_name = 'Porter';