-- Analyze the cumulative revenue generated over time.

select order_date,
sum(revenue) over(order by order_date) as cum_revenue
from
(select orders.order_date,
sum(order_deatils.quantity * pizzas.price) as revenue
from order_deatils join pizzas
on order_deatils.pizza_id = pizzas.pizza_id
join orders
on orders.order_id = order_deatils.order_id
group by orders.order_date) as sales
order by cum_revenue desc limit 3;

