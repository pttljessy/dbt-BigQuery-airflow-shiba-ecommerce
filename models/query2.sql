-- exploratory analysis
SELECT 
    distinct order_status 
FROM 
    `shiba-ecommerce.shiba_dataset.shiba_orders` 
LIMIT 1000

-- -- a) Calculate the percentage of order status.
-- SELECT 
--     order_status,
--     COUNT(*) AS Number_of_order_status,
--     SUM(COUNT(*)) OVER () AS Total_number_of_order_status,
--     ROUND((COUNT(*) / SUM(COUNT(*)) OVER ())*100,4) AS Percentage_of_order_status
-- FROM 
--   `shiba-ecommerce.shiba_dataset.shiba_orders` 
-- GROUP BY 
--   order_status
-- ORDER BY 
--   Percentage_of_order_status DESC

-- -- b) Output the table which tells the meaning of each order status. 
-- -- Result table has 3 columns: order_status, percentage, meaning

-- SELECT 
--     *
-- FROM 
--     `shiba-ecommerce.shiba_dataset.shiba_orders` 
-- WHERE
--     order_status = 'delivered' and
--     (order_purchase_timestamp is null or 
--     order_approved_at is null or 
--     order_delivered_carrier_date is null 
--     or order_delivered_customer_date is null 
--     or order_estimated_delivery_date is null)




