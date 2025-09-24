/* Write your PL/SQL query statement below 
1. identify odd number
2. identify not boring
3. desc by rating
*/

select * 
from Cinema
where 1=1
and description <> 'boring'
and mod(id,2) <> 0
order by rating desc;