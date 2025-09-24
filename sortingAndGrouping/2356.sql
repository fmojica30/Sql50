/* Write your PL/SQL query statement below 
    distinct subjeccts by teacher
    group by teacher
*/

select teacher_id, count(distinct subject_id) as cnt
from Teacher
group by teacher_id;