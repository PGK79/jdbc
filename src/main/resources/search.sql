SELECT DISTINCT orders.product_name
FROM tables_for_task_two.ORDERS orders
JOIN tables_for_task_two.CUSTOMERS customer ON customer.id = orders.customer_id
WHERE name = :name;