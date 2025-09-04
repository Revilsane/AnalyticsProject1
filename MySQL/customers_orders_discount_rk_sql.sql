SELECT order_items.order_id, 
	order_items.item_id,
	orders.customer_id,
	order_items.discount, 
	orders.order_date,
	DENSE_RANK() OVER(PARTITION BY customer_id ORDER BY order_date ASC) as rk
	FROM order_items
INNER JOIN orders ON orders.order_id = order_items.order_id
ORDER BY orders.customer_id ASC

