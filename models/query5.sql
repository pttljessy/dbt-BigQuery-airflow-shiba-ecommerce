-- # a) Output product category based on the number of orders. 
-- Result table has 2 columns: product_id, num_of_orders

SELECT 
    distinct products.product_id,
    count(order_id) as num_of_orders
FROM `shiba-ecommerce.shiba_dataset.shiba_products` as products
LEFT JOIN `shiba-ecommerce.shiba_dataset.shiba_order_items` as order_items
ON products.product_id = order_items.product_id 
GROUP BY products.product_id

-- -- b) Output product category based on the number of orders. Result table has 2 columns: product_category_english, num_of_orders
-- SELECT 
--     distinct products.product_id,
--     product_category_name_english,
--     count(order_id) as num_of_orders
-- FROM `shiba-ecommerce.shiba_dataset.shiba_products` as products
-- LEFT JOIN `shiba-ecommerce.shiba_dataset.shiba_order_items` as order_items
-- ON products.product_id = order_items.product_id 
-- JOIN `shiba-ecommerce.shiba_dataset.product_category_name_trans` as product_cat_eng
-- ON product_cat_eng.product_category_name_english = products.product_category_name
-- GROUP BY products.product_id, product_category_name_english

-- -- # c) Calculate GMV of each product. Result has 2 columns: product_id, GMV

-- WITH gross_merchandise_value AS (
--     SELECT 
--         distinct products.product_id,
--         count(order_items.order_id) as num_of_orders
--     FROM `shiba-ecommerce.shiba_dataset.shiba_products` as products
--     LEFT JOIN `shiba-ecommerce.shiba_dataset.shiba_order_items` as order_items
--     ON products.product_id = order_items.product_id  
--     GROUP BY products.product_id
-- )
-- SELECT 
--     distinct gross_merchandise_value.product_id,
--     (gross_merchandise_value.num_of_orders * order_items.price) as GMV
-- FROM gross_merchandise_value
-- LEFT JOIN `shiba-ecommerce.shiba_dataset.shiba_order_items` as order_items
-- ON gross_merchandise_value.product_id = order_items.product_id  















