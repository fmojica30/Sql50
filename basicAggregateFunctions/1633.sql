/* Write your PL/SQL query statement below 
1. percentage in each contest -> number in contest/total number of users
round(x,2)
order by percentage desc, contest_id asc
*/

select r.contest_id, round((count(r.contest_id)/(select count(*) from users))*100,2) as percentage
from Users u, Register r
where u.user_id = r.user_id
group by r.contest_id
order by percentage desc, contest_id asc;