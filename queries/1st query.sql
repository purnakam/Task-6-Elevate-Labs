--Find all orders that are overdue
SELECT *
FROM orders
WHERE required_date < CURDATE() AND shipped_date IS NULL;