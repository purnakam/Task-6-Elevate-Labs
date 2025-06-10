-- monthly revenue and order volume
SELECT
    EXTRACT(YEAR FROM o.order_date) AS order_year,
    EXTRACT(MONTH FROM o.order_date) AS order_month,
    SUM(oi.quantity * oi.list_price * (1 - oi.discount)) AS monthly_revenue,
    COUNT(DISTINCT o.order_id) AS monthly_order_volume
FROM orders o
JOIN order_item oi ON o.order_id = oi.order_id
WHERE o.order_date BETWEEN '2016-01-01' AND '2017-12-31'  -- Example time period
GROUP BY order_year, order_month
ORDER BY order_year, order_month;