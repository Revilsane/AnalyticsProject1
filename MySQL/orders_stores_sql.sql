SELECT orders.store_id, stores.store_name, stores.city, COUNT(orders.order_id) AS orders_count  FROM orders
JOIN stores ON stores.store_id = orders.store_id
GROUP BY orders.store_id
