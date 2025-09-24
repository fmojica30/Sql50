/* Write your PL/SQL query statement below 
count group by class 
count in the where clauses with having 
*/

select class
from Courses
where 1=1
group by class
having count(class) >= 5;
