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
