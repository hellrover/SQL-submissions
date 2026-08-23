select salary from(
select name, salary, RANK() over(order by salary desc) as ranking
from employee) table1
where ranking = 2