--  average order value for each store
SELECT
    o.store_id,
    AVG(oi.quantity * oi.list_price * (1 - oi.discount)) AS average_order_value
FROM orders o
JOIN order_item oi ON o.order_id = oi.order_id
GROUP BY o.store_id;