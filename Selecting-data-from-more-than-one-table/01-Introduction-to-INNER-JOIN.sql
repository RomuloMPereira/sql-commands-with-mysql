use employees;

SELECT * FROM employees INNER JOIN dept_manager ON employees.emp_no = dept_manager.emp_no;
SELECT * FROM employees JOIN dept_manager ON employees.emp_no = dept_manager.emp_no;

SELECT 
    *
FROM
    employees emp
        JOIN
    dept_manager dm ON emp.emp_no = dm.emp_no
		JOIN
	departments dept ON dm.dept_no = dept.dept_no;