-- # Customers & Orders & Payment
-- # a)
SELECT count(distinct customer_unique_id) as unique_customer,
       count(distinct customer_city) as unique_city,
       count(distinct customer_state) as unique_state
FROM `shiba-ecommerce.shiba_dataset.shiba_customers`  LIMIT 1000

-- -- # b)
-- -- Find which state has the highest avg_payment_value

-- WITH cte as
-- (SELECT distinct customer_state,
--        round(avg(payment_value),2) as avg_payment_value
-- FROM `shiba-ecommerce.shiba_dataset.shiba_customers` as c
-- JOIN `shiba-ecommerce.shiba_dataset.shiba_orders` as o
-- ON c.customer_id = o.customer_id
-- JOIN `shiba-ecommerce.shiba_dataset.shiba_order_payments` as p
-- ON o.order_id = p.order_id
-- group by customer_state)

-- select customer_state, max(avg_payment_value)
-- from cte
-- group by 1
-- limit 1

-- -- # c)calculate total spending (payment_value) by customer_unique_id
-- SELECT c.customer_id, 
--        sum(payment_value) as total_spending
-- FROM `shiba-ecommerce.shiba_dataset.shiba_customers` as c
-- JOIN `shiba-ecommerce.shiba_dataset.shiba_orders` as o
-- ON c.customer_id = o.customer_id
-- JOIN `shiba-ecommerce.shiba_dataset.shiba_order_payments` as p
-- ON o.order_id = p.order_id
-- group by customer_id

-- -- Follow-up: How to extract customer_unique_id?

-- -- Assign membership status
-- WITH total_spending_table as (
--     SELECT 
--         customers.customer_id, 
--         sum(payment_value) as total_spending
--     FROM `shiba-ecommerce.shiba_dataset.shiba_customers` as customers
--     JOIN `shiba-ecommerce.shiba_dataset.shiba_orders` as orders
--     ON customers.customer_id = orders.customer_id
--     JOIN `shiba-ecommerce.shiba_dataset.shiba_order_payments` as payment
--     ON orders.order_id = payment.order_id
--     GROUP BY customer_id
-- )

-- SELECT 
--     customer_id, 
--     total_spending,
--     CASE 
--         WHEN total_spending < 100 THEN "silver"
--         WHEN total_spending between 100 and 400 THEN "gold"
--         ELSE "platinum" 
--     END AS member_status
-- FROM total_spending_table



