--  top 5 best-selling products
SELECT
    product_id,
    SUM(quantity) AS total_quantity_ordered
FROM order_item
GROUP BY product_id
ORDER BY total_quantity_ordered DESC
LIMIT 5;