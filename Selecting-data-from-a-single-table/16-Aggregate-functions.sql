use employees;

SELECT date_format(from_date, '%Y') AS from_year FROM salaries;

SELECT date_format(from_date, '%Y') AS from_year, sum(salary) FROM salaries GROUP BY from_year;

SELECT date_format(from_date, '%Y') AS salary_year, min(salary) FROM salaries GROUP BY salary_year;

SELECT 
    DATE_FORMAT(from_date, '%Y') AS salary_year,
    MAX(salary) AS max_salary,
    MIN(salary) AS min_salary
FROM
    salaries
GROUP BY salary_year;

SELECT 
    salary_year, max_salary, min_salary, max_salary - min_salary AS delta
FROM
    (SELECT 
        DATE_FORMAT(from_date, '%Y') AS salary_year,
            MAX(salary) AS max_salary,
            MIN(salary) AS min_salary
    FROM
        salaries
    GROUP BY salary_year) AS sub_select;

SELECT 
    DATE_FORMAT(from_date, '%Y') AS salary_year,
    AVG(salary) AS avg_salary,
    COUNT(*) AS total_recs,
    SUM(salary) AS salary_sum
FROM
    salaries
GROUP BY salary_year;

SELECT 
    avg_salary, salary_sum / total_recs AS calculated_avg
FROM
    (SELECT 
        DATE_FORMAT(from_date, '%Y') AS salary_year,
            AVG(salary) AS avg_salary,
            COUNT(*) AS total_recs,
            SUM(salary) AS salary_sum
    FROM
        salaries
    GROUP BY salary_year) AS sub_select;