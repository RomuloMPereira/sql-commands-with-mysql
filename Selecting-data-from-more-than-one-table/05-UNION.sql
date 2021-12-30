USE employees;

SELECT 
    dept_name, emp.emp_no, first_name, last_name, 'Manager' AS emp_type
FROM
    employees AS emp
        JOIN
    dept_manager AS dm ON emp.emp_no = dm.emp_no
        JOIN
    departments AS dept ON dm.dept_no = dept.dept_no
WHERE dm.to_date = '9999-01-01'
UNION
SELECT 
    dept_name, employees.emp_no, first_name, last_name, 'Staff' AS emp_type
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
ORDER BY emp_type, dept_name , last_name;