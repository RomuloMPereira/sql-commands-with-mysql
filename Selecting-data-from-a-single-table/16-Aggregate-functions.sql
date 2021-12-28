use employees;

SELECT date_format(from_date, '%Y') AS from_year FROM salaries;

SELECT date_format(from_date, '%Y') AS from_year, sum(salary) FROM salaries GROUP BY from_year;