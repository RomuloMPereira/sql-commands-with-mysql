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