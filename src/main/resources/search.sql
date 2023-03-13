SELECT DISTINCT orders.product_name
FROM task_two_tables.ORDERS orders
JOIN task_two_tables.CUSTOMERS customer ON customer.id = orders.customer_id
WHERE name = :name;