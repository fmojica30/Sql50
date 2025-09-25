/* Write your PL/SQL query statement below 
group by user_id a count of followers
order by user_id asc
*/

select user_id, count(*) as followers_count
from Followers
group by user_id
order by user_id asc;

/*
Super simple solution there is only a user_id if there is a follower so count up all the records
for a user ID and you will have the followers
*/