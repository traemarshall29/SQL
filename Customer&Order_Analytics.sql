/* In this SQL, I'm querying a database with multiple tables in it to quantify statistics about customer and order data. */

/* How many orders were placed in January? */
SELECT COUNT(orderID) 
FROM BIT_DB.JanSales 
WHERE length(orderID) = 6
AND orderID <> 'Order ID' ; 

/* How many of those orders were for an iPhone? */
SELECT COUNT(orderid) 
FROM BIT_DB.JanSales
WHERE product = 'iPhone'
AND length(orderID) = 6
AND orderID <> 'Order ID' ; 

/* Select the customer account numbers for all the orders that were placed in February. */
SELECT distinct acctnum
FROM BIT_DB.customers AS c
INNER JOIN BIT_DB.FebSales AS Feb
ON c.order_id = Feb.orderid
WHERE length(orderID) = 6
AND orderID <> 'Order ID' ; 

/* Which product was the cheapest one sold in January, and what was the price? */
SELECT product, min(price)
FROM BIT_DB.JanSales
GROUP BY product, price
ORDER BY price ASC
LIMIT 1 ;

/* What is the total revenue for each product sold in January? */
SELECT SUM(quantity)*price AS Revenue, product
FROM BIT_DB.JanSales
GROUP BY product ;

/* Which products were sold in February at 548 Lincoln St, Seattle, WA 98101, how many of each were sold, and what was the total revenue? */
SELECT product, SUM(quantity), SUM(quantity)*price AS Total_revenue
FROM BIT_DB.FebSales
WHERE location = '548 Lincoln St, Seattle, WA 98101'
GROUP BY product ; 

/* How many customers ordered more than 2 products at a time in February, and what was teh average amount spent for those customers? */
SELECT COUNT(distinct c.acctnum), avg(quantity*price)
FROM BIT_DB.FebSales AS Feb
LEFT JOIN BIT_DB.customers AS c
ON Feb.orderid = c.order_id
WHERE Feb.Quantity>2
AND length(orderid) = 6
AND orderid <> 'Order ID';

/* List all the products sold in Los Angeles in February, and include how many of each were sold. */
SELECT product, SUM(quantity)
FROM BIT_DB.FebSales
WHERE location LIKE '%Los Angeles%'
GROUP BY product ; 
