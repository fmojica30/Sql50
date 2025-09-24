/* Write your PL/SQL query statement below
1. get average selling price sum(price*units sold at price)/total units sold
2. Find if units were sold 

round(x, 2)
*/

select p.product_id, coalesce(round(sum(p.price * u.units)/sum(u.units), 2),0) as average_price
from Prices p
left join UnitsSold u
on p.product_id = u.product_id
and u.purchase_date between p.start_date and p.end_date
group by p.product_id;