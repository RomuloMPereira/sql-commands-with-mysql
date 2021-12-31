use employees;

INSERT INTO departments VALUES ('d999', 'Awesome Gurus');
INSERT INTO departments (dept_no, dept_name)  VALUES ('d998', 'Awesome Gurus 2');

INSERT INTO employees SELECT max(emp_no) + 1, '1988-01-01', 'Bruno', 'Silva', 'M', '2021-12-31' FROM employees;