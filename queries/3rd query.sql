-- average order value
SELECT AVG(total_order_value) AS average_order_value
FROM (
    SELECT
        o.order_id,
        SUM(oi.quantity * oi.list_price * (1 - oi.discount)) AS total_order_value
    FROM orders o
    JOIN order_item oi ON o.order_id = oi.order_id
    GROUP BY o.order_id
) AS order_values;