create view seventhQuery as 
select e.emp_no, e.last_name, e.first_name, d.dept_no
from employees as e
inner join dept_emp as d on
e.emp_no=d.emp_no;

select e.emp_no, e.last_name, e.first_name, d.dept_name
from seventhQuery as e
inner join departments as d on
e.dept_no=d.dept_no
where d.dept_name='Sales' or d.dept_name='Development'