-- shipping time for completed orders
SELECT
    order_id,
    DATEDIFF(shipped_date, order_date) AS shipping_time_days
FROM orders
WHERE shipped_date IS NOT NULL;