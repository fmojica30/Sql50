/* Write your PL/SQL query statement below 
1. find the first logins of each player
*/
select round((count(a2.player_id)/count(a1.player_id)),2) as fraction
from Activity a1
left join Activity a2
on a2.player_id = a1.player_id and a2.event_date = a1.event_date + 1
where (a1.player_id, a1.event_date) in (select player_id, min(event_date) from activity group by player_id);

/*
Explanation
when doing a left join here there would only be at most one record for each player overall
due to the fact that there can only be one record for the day after their first login
The join creates a table that includes the data for the second day login right next to the first day
the fact that there can only be one record per player means we can remove the distinct from the divisor in
    in the calculation
We can just count the player_id from a2 becuase if there is no login on the day after the first login there
    will be no record
*/