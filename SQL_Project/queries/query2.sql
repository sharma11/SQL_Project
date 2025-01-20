-- Calculate the total revenue generated from pizza sales.

-- select
-- sum(order_deatils.quantity * pizzas.price) as total_sales
-- from order_deatils join pizzas
-- on pizzas.pizza_id = order_deatils.pizza_id

-- round off 2 decimal places

SELECT 
    ROUND(SUM(order_deatils.quantity * pizzas.price),
            2) AS total_sales
FROM
    order_deatils
        JOIN
    pizzas ON pizzas.pizza_id = order_deatils.pizza_id
