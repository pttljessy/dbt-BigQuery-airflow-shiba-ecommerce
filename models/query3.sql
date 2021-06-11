
-- ) Calculate payment_type by percentage

SELECT 
  payment_type
  ,COUNT(*) AS Number_of_payments
  ,SUM(COUNT(*)) OVER () AS Total_number_of_payments
  ,ROUND((COUNT(*) / SUM(COUNT(*)) OVER ())*100,4) AS Percentage_of_payments
FROM 
  `shiba-ecommerce.shiba_dataset.shiba_order_payments`
GROUP BY 
  payment_type
ORDER BY 
  Percentage_of_payments DESC

-- -- # b) Calculate avg(payment_value) by payment_type

-- SELECT 
--   payment_installments
--   ,COUNT(*) AS Number_of_payments_installments
--   ,SUM(COUNT(*)) OVER () AS Total_number_of_payments_installments
--   ,ROUND(COUNT(*) / SUM(COUNT(*)) OVER (),4) AS Percentage_of_payment_installments
-- FROM 
--   `shiba-ecommerce.shiba_dataset.shiba_order_payments`
-- GROUP BY 
--   payment_installments
-- ORDER BY 
--   payment_installments DESC

-- -- c) Calculate avg(payment_value) by payment_type

-- select
--     payment_type,
--     round(avg(payment_value),2) as avg_payment_value
-- from 
--     `shiba-ecommerce.shiba_dataset.shiba_order_payments`
-- group by 
--     payment_type


-- -- ** Follow up: Calculating the percentage has another solution by using with cte as
-- -- a)
-- WITH 
-- payment_type_percentage AS (
--     SELECT count(payment_type) as total_payments
--     FROM `shiba-ecommerce.shiba_dataset.shiba_order_payments`
-- ),
-- int2 as (
--     SELECT
--         payment_type,
--         count(payment_type) as count_by_type
--     FROM `shiba-ecommerce.shiba_dataset.shiba_order_payments` , payment_type_percentage
--     GROUP BY payment_type
-- )
-- SELECT 
--     payment_type,
--     round(((count_by_type / total_payments)*100),2) as percentage
-- FROM payment_type_percentage, int2
-- order by percentage desc


-- -- exploratory analysis
-- SELECT 
--     distinct payment_type 
-- FROM `shiba-ecommerce.shiba_dataset.shiba_order_payments` 
-- LIMIT 1000

