/* Write your PL/SQL query statement below 
for each machine get the average of the difference between start and end times 
subquery with just the lengths
outer query with groupby primary key
*/

select machine_id, round(avg(processing_time),3) as processing_time
from (
    select a1.machine_id, (a2.timestamp - a1.timestamp) as processing_time
    from Activity a1, Activity a2
    where 1=1
    and a1.machine_id = a2.machine_id
    and a1.process_id = a2.process_id
    and a1.activity_type = 'start'
    and a2.activity_type = 'end';
)
group by machine_id;