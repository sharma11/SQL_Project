-- List the top 5 most ordered pizza types along with their quantities.

-- select pizza_types.name, 
-- order_deatils.quantity
-- from pizza_types join pizzas
-- on pizza_types.pizza_type_id = pizzas.pizza_type_id
-- join order_deatils
-- on order_deatils.pizza_id = pizzas.pizza_id;

SELECT 
    pizza_types.name, SUM(order_deatils.quantity) AS quantity
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_deatils ON order_deatils.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.name
ORDER BY quantity DESC
LIMIT 5;
