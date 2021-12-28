use employees;

SELECT 
    dept_name, emp.emp_no, first_name, last_name, dm.to_date
FROM
    employees AS emp
        JOIN
    dept_manager AS dm ON emp.emp_no = dm.emp_no
        JOIN
    departments AS dept ON dm.dept_no = dept.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY dept_name;

SELECT 
    dept_name,
    emp.emp_no,
    first_name,
    last_name,
    dm.to_date,
    emp.gender
FROM
    employees AS emp
        JOIN
    dept_manager AS dm ON emp.emp_no = dm.emp_no
        JOIN
    departments AS dept ON dm.dept_no = dept.dept_no
WHERE
    dm.to_date = '9999-01-01'
        AND emp.gender = 'F'
ORDER BY dept_name;

SELECT * FROM dept_emp JOIN departments ON dept_emp.dept_no = departments.dept_no;

SELECT 
    *
FROM
    dept_emp
        JOIN
    departments ON dept_emp.dept_no = departments.dept_no
		JOIN 
	employees ON dept_emp.emp_no = employees.emp_no;

SELECT 
    dept_name, first_name, last_name, title
FROM
    dept_emp
        JOIN
    departments ON dept_emp.dept_no = departments.dept_no
        JOIN
    employees ON dept_emp.emp_no = employees.emp_no
        JOIN
    titles ON employees.emp_no = titles.emp_no
WHERE
    dept_emp.to_date = '9999-01-01'
        AND titles.to_date = '9999-01-01'
ORDER BY dept_name , last_name;