use employees;

SELECT DATE_FORMAT('2017-06-15', '%M %d %Y');

SELECT 
    from_date AS original,
    DATE_FORMAT(from_date, '%M %d, %Y') version1,
    DATE_FORMAT(from_date, '%m %D, %Y') version2,
    DATE_FORMAT(from_date, '%d/%m/%Y') version3
FROM
    salaries;