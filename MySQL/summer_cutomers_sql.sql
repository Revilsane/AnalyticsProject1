SELECT 	orders.customer_id,
	order_items.order_id, 
	order_items.item_id,
	order_items.quantity,
	order_items.list_price,
	order_items.discount, 
	orders.order_date,
	DENSE_RANK() OVER(PARTITION BY customer_id ORDER BY order_date ASC) as rk
	FROM order_items
INNER JOIN orders ON orders.order_id = order_items.order_id

