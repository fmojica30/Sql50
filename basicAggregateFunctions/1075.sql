/* Write your PL/SQL query statement below 
1. avg() for years of experience of employees on a project
2. round(x, 2)
inner join
*/

select p.project_id, round(avg(e.experience_years),2) as average_years
from Project P, Employee e
where p.employee_id = e.employee_id
group by p.project_id;