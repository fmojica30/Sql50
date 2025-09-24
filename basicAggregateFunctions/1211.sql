/* Write your PL/SQL query statement below 
1. quality -> avg(rating/position) 
2. poor query percentage -> round(count(quality < 3) / query records, 2) * 100
*/

select query_name, round(avg(rating/position),2) as quality, round((count(case when rating < 3 then 1 end)/count(query_name))*100,2) as poor_query_percentage
from Queries
group by query_name;
