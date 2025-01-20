-- Advanced
-- Calculate the percentage contribution of each pizza type to total revenue.

-- select pizza_types.category,
-- sum(order_deatils.quantity*pizzas.price) as revenue
-- from pizza_types join pizzas
-- on pizza_types.pizza_type_id = pizzas.pizza_type_id
-- join order_deatils
-- on order_deatils.pizza_id = pizzas.pizza_id
-- group by pizza_types.category order by revenue desc;


SELECT 
    pizza_types.category,
    ROUND(SUM(order_deatils.quantity * pizzas.price) / (SELECT 
                    ROUND(SUM(order_deatils.quantity * pizzas.price),
                                2) AS total_sales
                FROM
                    order_deatils
                        JOIN
                    pizzas ON pizzas.pizza_id = order_deatils.pizza_id) * 100,
            2) AS revenue
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_deatils ON order_deatils.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.category
ORDER BY revenue DESC; 

