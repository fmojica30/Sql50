/* Write your PL/SQL query statement below 
Join on empId and where clause bonus < 1000
*/

select e.name, b.bonus
from Employee e
left join Bonus b
on e.empId = b.empId
where 1=1
and e.empId = b.empId
and b.bonus < 1000 
or b.bonus is null;
