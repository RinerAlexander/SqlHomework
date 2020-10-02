create view fourthQuery as
SELECT e.emp_no, e.first_name, e.last_name, d.dept_no
FROM dept_emp AS d
INNER JOIN employees AS e ON
e.emp_no=d.emp_no;

SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM departments AS d
INNER JOIN fourthQuery AS e ON
e.dept_no=d.dept_no