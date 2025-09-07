SELECT orders.staff_id, staffs.first_name, staffs.last_name, COUNT(order_id) AS orders_count FROM orders
JOIN staffs ON staffs.staff_id = orders.staff_id
GROUP BY staff_id
ORDER BY staff_id ASC
