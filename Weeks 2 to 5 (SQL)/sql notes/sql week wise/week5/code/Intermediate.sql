-- Intermediate:

# Join the necessary tables to find the total quantity of each pizza category ordered.
select pizza_types.category, sum(orders_details.quantity) as quantity
from pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join orders_details
on orders_details.pizza_id = pizzas.pizza_id
group by pizza_types.category order by quantity ;

# Determine the distribution of orders by hour of the day.
select hour(order_time) as hour,
count(order_id) as order_count
from orders
group by hour(order_time);


# Join relevant tables to find the category-wise distribution of pizzas.


# Group the orders by date and calculate the average number of pizzas ordered per day.



# Determine the top 3 most ordered pizza types based on revenue.






