/* Write your PL/SQL query statement below */
select w1.id 
from weather w1, weather w2
where 1=1
and w2.recordDate = w1.recordDate - 1
and w1.temperature > w2.temperature;