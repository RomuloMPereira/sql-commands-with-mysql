use employees;

SELECT * FROM employees INNER JOIN dept_manager ON employees.emp_no = dept_manager.emp_no;
SELECT * FROM employees JOIN dept_manager ON employees.emp_no = dept_manager.emp_no;

SELECT 
    *
FROM
    employees AS emp
        JOIN
    dept_manager AS dm ON emp.emp_no = dm.emp_no
		JOIN
	departments AS dept ON dm.dept_no = dept.dept_no;
    
SELECT 
    dept_name, emp.emp_no, first_name, last_name
FROM
    employees AS emp
        JOIN
    dept_manager AS dm ON emp.emp_no = dm.emp_no
        JOIN
    departments AS dept ON dm.dept_no = dept.dept_no
ORDER BY dept_name , last_name;
    
