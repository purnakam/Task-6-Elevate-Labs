--  percentage of orders in each status
SELECT
    order_status,
    (COUNT(*) / (SELECT COUNT(*) FROM orders)) * 100 AS percentage
FROM orders
GROUP BY order_status;