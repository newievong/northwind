SELECT *
FROM customers;

SELECT DISTINCT country
FROM customers;

SELECT * 
FROM customers 
WHERE customer_id LIKE 'BL%';

SELECT * 
FROM orders
LIMIT 100;

SELECT * 
FROM customers 
WHERE postal_code IN ('1010', '3012', '12209', '05023');

SELECT * 
FROM orders 
WHERE ship_region IS NOT NULL;

SELECT * 
FROM customers 
ORDER BY country, city;

INSERT INTO customers (customer_id, company_name, contact_name, contact_title, address, city, region, postal_code, country, phone, fax)
VALUES ('CATCA', 'Cat Cafe', 'Newie Vongmanivanh', 'Sales Associate', '1234 Ruby Road', 'Detroit', 'MI', '48315', 'USA', '467-283-9002', '467-283-9003');

UPDATE orders SET ship_region = 'EuroZone' WHERE ship_country = 'France';

DELETE FROM order_details WHERE quantity = '1';

SELECT
AVG(quantity) AS average_quantity,
MAX(quantity) AS max_quantity,
MIN(quantity) AS min_quantity
FROM order_details;

SELECT order_id,
AVG(quantity) AS average_quantity,
MAX(quantity) AS max_quantity,
MIN(quantity) AS min_quantity
FROM order_details
GROUP BY order_id;

SELECT customer_id
FROM orders
WHERE order_id = 10290;

SELECT *
FROM orders
INNER JOIN customers ON orders.customer_id = customers.customer_id;

SELECT *
FROM orders
LEFT JOIN customers ON orders.customer_id = customers.customer_id;

SELECT *
FROM orders
RIGHT JOIN customers ON orders.customer_id = customers.customer_id;

SELECT ship_city, ship_country
FROM orders 
INNER JOIN employees ON orders.employee_id = employees.employee_id
WHERE city = 'London';

SELECT ship_name,orders.order_id,order_details.product_id, discontinued
FROM order_details INNER JOIN orders ON orders.order_id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.product_id
WHERE discontinued = 1;

SELECT first_name
FROM employees 
WHERE reports_to  IS NULL;

SELECT first_name
FROM employees
WHERE reports_to = 2;

CREATE INDEX index_customer_id ON customers (customer_id);
