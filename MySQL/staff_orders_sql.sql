SELECT orders.staff_id, COUNT(order_id) AS orders_count FROM orders
GROUP BY staff_id
ORDER BY staff_id ASC