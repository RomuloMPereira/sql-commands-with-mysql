use employees;

SELECT RIGHT('abcd', 1);

SELECT LEFT('abcd', 1);

SELECT 
    first_name,
    last_name,
    LEFT(first_name, 1),
    LEFT(last_name, 1)
FROM
    employees;
    
SELECT 
    first_name,
    last_name,
    CONCAT(LEFT(first_name, 1), LEFT(last_name, 1)) AS initials
FROM
    employees;