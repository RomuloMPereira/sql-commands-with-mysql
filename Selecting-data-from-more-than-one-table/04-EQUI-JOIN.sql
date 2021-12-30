USE employees;

SELECT 
    dept_name, first_name, last_name, title
FROM
    dept_emp AS de,
    departments AS dept,
    employees AS emp,
    titles AS t
WHERE
    emp.emp_no = de.emp_no
        AND de.dept_no = dept.dept_no
        AND t.emp_no = emp.emp_no
        AND de.to_date = '9999-01-01'
        AND t.to_date = '9999-01-01'
ORDER BY dept_name , last_name;

SELECT 
    count(*)
FROM
    dept_emp AS de,
    departments AS dept,
    employees AS emp,
    titles AS t
WHERE
    emp.emp_no = de.emp_no
        AND de.dept_no = dept.dept_no
        AND t.emp_no = emp.emp_no
        AND de.to_date = '9999-01-01'
        AND t.to_date = '9999-01-01'
ORDER BY dept_name , last_name;