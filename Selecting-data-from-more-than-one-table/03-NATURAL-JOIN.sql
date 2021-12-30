USE employees;

SELECT 
    dept_name, first_name, last_name, title
FROM
    dept_emp AS de
        NATURAL JOIN
    departments AS dept
        NATURAL JOIN
    employees AS emp 
        NATURAL JOIN
    titles AS t 
WHERE
    de.to_date = '9999-01-01'
        AND t.to_date = '9999-01-01'
ORDER BY dept_name , last_name;