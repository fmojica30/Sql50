/* Write your PL/SQL query statement below 
join table on itself where employee_id = reports_to left join to include if someone reports to no one
number of employees report to them is a count(employee_id) grouping by reports_to
the employee_id for the manager should be the reports to
round(avg(age), 0)
*/

select e1.employee_id, e1.name, count(e2.employee_id) as reports_count, round(avg(e2.age), 0) as average_age
from Employees e1
join Employees e2
on e1.employee_id = e2.reports_to
group by e1.employee_id, e1.name
order by e1.employee_id;