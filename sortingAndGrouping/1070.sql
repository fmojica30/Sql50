/* Write your PL/SQL query statement below 
    find the first year, min()
    get all sales entries within tat year 
    likely subquery to know what years to select
*/

select product_id, year as first_year, quantity, price
from Sales
where 1=1 
and (product_id, year) in (
    select product_id, min(year) as first_year
    from Sales 
    where 1=1
    group by product_id
    );
