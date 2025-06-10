--  orders that were shipped later than the required date
SELECT *
FROM orders
WHERE shipped_date > required_date;