-- Basic:

# Retrieve the total number of orders placed.
SELECT 
    COUNT(order_id) AS total_orders
FROM
    orders;



# Calculate the total revenue generated from pizza sales.
SELECT 
    ROUND(SUM(od.quantity * p.price), 2) AS total_sales
FROM
    orders_details AS od
        JOIN
    pizzas AS p ON p.pizza_id = od.pizza_id;



# Identify the highest-priced pizza.
SELECT 
    pt.name, p.price AS highest_priced_pizza
FROM
    pizza_types AS pt
        JOIN
    pizzas AS p ON pt.pizza_type_id = p.pizza_type_id
ORDER BY p.price DESC
LIMIT 1;



# Identify the most common pizza size ordered.
SELECT 
    p.size, COUNT(od.orders_details_id) AS order_count
FROM
    pizzas AS p
        JOIN
    orders_details AS od ON p.pizza_id = od.pizza_id
GROUP BY p.size
ORDER BY order_count DESC;


#List the top 5 most ordered pizza types along with their quantities.
select pt.name ,sum(od.quantity) as quantity
from pizza_types as pt
join pizzas as p
on pt.pizza_type_id = p.pizza_type_id
join orders_details as od
on od.pizza_id =p.pizza_id
group by pt.name order by quantity desc limit 5;










