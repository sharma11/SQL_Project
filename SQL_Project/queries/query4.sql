-- Identify the most common pizza size ordered.

-- select quantity, count(order_details_id)
-- from order_deatils group by quantity;

-- select pizzas.size, count(order_deatils.order_details_id)
-- from pizzas join order_deatils
-- on pizzas.pizza_id = order_deatils.pizza_id
-- group by pizzas.size;

SELECT 
    pizzas.size,
    COUNT(order_deatils.order_details_id) AS order_count
FROM
    pizzas
        JOIN
    order_deatils ON pizzas.pizza_id = order_deatils.pizza_id
GROUP BY pizzas.size
ORDER BY order_count DESC;