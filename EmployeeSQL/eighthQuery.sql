select count(last_name) as number, last_name
from employees
group by last_name
order by number desc