/* Write your PL/SQL query statement below 
immediate orders -> customer_pref_delivery_date = order_date
first order -> earliest order only one per customer guaranteed

subquery of all first orders
and then get immediate count/total
*/


select round(avg(case when order_date = customer_pref_delivery_date then 1 else 0 end)*100,2) as immediate_percentage
from Delivery
where (customer_id, order_date) in ( SELECT customer_id,
                    MIN(order_date)
                    FROM Delivery
                    GROUP BY customer_id);