-- # a) Calculate the total order value for each order.

WITH order_value AS (
    SELECT 
    order_items.order_id,
    order_items.price,
    order_items.freight_value,
    (order_items.price + order_items.freight_value) as total_by_row
FROM `shiba-ecommerce.shiba_dataset.shiba_order_items` as order_items
)
SELECT 
    order_value.order_id,
    SUM(total_by_row) as total_order_value

FROM order_value
GROUP BY order_value.order_id


-- # https://stackoverflow.com/questions/40150208/how-to-efficiently-check-if-two-columns-in-the-same-table-is-one-to-one-mapping
-- # select order_id, count(distinct(product_id)) FROM `shiba-ecommerce.shiba_dataset.shiba_order_items` group by order_id having count(distinct(product_id)) >1
-- limit 10 