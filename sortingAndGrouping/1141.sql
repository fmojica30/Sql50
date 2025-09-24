/* Write your PL/SQL query statement below 
    assume activity type will never be null (edge case)
    date between section
    distinct users in each day
    inclusive means we only have to search 29 days back instead of 30 since the 30th day is 2019-07-27 
*/

select distinct to_char(activity_date, 'YYYY-MM-DD') as day, count(distinct user_id) as active_users
from Activity
where 1=1 
and activity_date between to_date('2019-07-27','YYYY-MM-DD')  - 29 and to_date('2019-07-27','YYYY-MM-DD')
group by activity_date
order by day;