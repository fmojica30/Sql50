/* Write your PL/SQL query statement below
for each month and country 
    0. find the month
        
    1. number of txns and total amt
        count(txns) and sum(amount)
    2. number of approved txns and total amount
        count(txns where approved) and sum(txns where approved)
*/

select 
    to_char(trans_date, 'YYYY-MM') as month,
    country,
    count(*) as trans_count,
    sum(case when state = 'approved' then 1 else 0 end) as approved_count,
    sum(amount) as trans_total_amount,
    sum(case when state = 'approved' then amount else 0 end) as approved_total_amount
from Transactions
group by to_char(trans_date, 'YYYY-MM'), country;
