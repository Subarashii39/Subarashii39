SELECT 
Customers.customer_id,
customers.age,
sum(Orders.amount) as Total_amount
FROM orders
inner join customers on Customers.customer_id = orders.customer_id
Group by
Customers.customer_id,
customers.age
having Total_amount >=400
order by Total_amount desc
