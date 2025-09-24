/* Write your PL/SQL query statement below 
select count(*)
from Confirmations c
where user_id = 7
and action = 'confirmed';

select count(*)
from Confirmations c
where user_id = 7;
*/


SELECT 
    s.user_id, 
    ROUND(
        SUM(case when c.action = 'confirmed' then 1 else 0 end)/COUNT(s.user_id)
    ,2) 
    as confirmation_rate
FROM signups s
LEFT JOIN confirmations c
ON s.user_id = c.user_id
GROUP BY s.user_id;