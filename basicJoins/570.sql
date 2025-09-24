/* Write your PL/SQL query statement below 
aggregate subquery 
need to compare managerId to id to see who is a manager
*/

select name
from Employee e1
where (select count(*) from Employee e2 where e2.managerId = e1.id) >= 5;

