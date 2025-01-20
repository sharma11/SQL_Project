-- Group the orders by date and calculate the average number of pizzas ordered per day.

-- select orders.order_date, sum(order_deatils.quantity) 
-- from orders join order_deatils
-- on orders.order_id = order_deatils.order_id
-- group by orders.order_date;



SELECT 
    AVG(quantity) AS avg_pizza_odered_per_day
FROM
    (SELECT 
        orders.order_date, SUM(order_deatils.quantity) AS quantity
    FROM
        orders
    JOIN order_deatils ON orders.order_id = order_deatils.order_id
    GROUP BY orders.order_date) AS order_quantity;
    


-- round off upto 2 decimal places

-- select round(avg(quantity),0) as avg_pizza_odered_per_day from
-- (select orders.order_date, sum(order_deatils.quantity) as quantity
-- from orders join order_deatils
-- on orders.order_id = order_deatils.order_id
-- group by orders.order_date) as order_quantity ;

