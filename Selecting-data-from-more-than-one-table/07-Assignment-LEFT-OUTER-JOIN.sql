USE employees;

SELECT 
    *
FROM
    employees AS emp
        LEFT JOIN
    titles AS t ON emp.emp_no = t.emp_no
        AND to_date = '9999-01-01'
WHERE
    t.emp_no IS NULL;