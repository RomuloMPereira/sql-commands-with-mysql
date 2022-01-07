use employees;

SET @foo = 'bar';

SELECT @foo;

begin;

SELECT (@employee_no:=(max(emp_no) + 1)) FROM employees;

INSERT INTO employees VALUES (@employee_no, '1963-01-01', 'Mario', 'Bros', 'M', '2022-01-01');

INSERT INTO titles VALUES (@employee_no, 'Developer', '2022-01-01', '9999-01-01');

INSERT INTO dept_emp VALUES (@employee_no, 'd005', '2022-01-01', '9999-01-01');

INSERT INTO salaries VALUES (@employee_no, 150000, '2022-01-01', '9999-01-01');

commit;
rollback;

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
    emp.emp_no = @employee_no;
