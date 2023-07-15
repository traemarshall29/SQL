/*  In this SQL, I used advanced SELECT queries to discover things about the data from the sales for an online furniture store. Collected by: https://www.khanacademy.org/profile/charlesb2000/ */

CREATE TABLE sales(
  ID INTEGER  NOT NULL PRIMARY KEY
, transaction_date TEXT
, product TEXT
, price INTEGER
, payment_type TEXT
, name TEXT
, city TEXT
, state TEXT
, country TEXT
, account_created TEXT
, last_login TEXT
, latitude REAL
, longitude REAL
);

-- Display the products that have an average price of greater than $7000.
SELECT product, AVG(price) AS avg_price FROM sales
    GROUP BY product
    HAVING avg_price <7000 ;

--Dispay how many of each product was bought from the online store. 
SELECT product, COUNT(*) FROM sales GROUP BY product; 

--Display the cheapest price of each type of product.
SELECT product, MIN (price) FROM sales GROUP BY product; 

--Display the most expensive price of each type of product.
SELECT product, MAX (price) FROM sales
    GROUP BY product; 

--Display all orders that were shipped to the US States: Colorado, Florida, Virginia, or California that paid with a Mastercard or an Amex; order the list from most expensive to least expensive.
SELECT * FROM sales 
    WHERE state IN ("CO","FL", "VA", "CA") 
    AND payment_type = "Mastercard" OR payment_type = "Amex" 
    ORDER BY price DESC; 

--Display what countries customers shipped their orders to. 
SELECT country FROM sales GROUP BY country;

--Using the previous query, display the data by creating a case statement to label what continents orders were shipped to. 
SELECT transaction_date, product, price, payment_type, name, 
    CASE 
        WHEN country = "South Africa" THEN "Africa"
        WHEN country = "Australia" THEN "Australia"
        WHEN country = "India" OR "Israel" OR "United Arab Emirates" THEN "Asia"
        WHEN country = "Canada" OR "United States" THEN "North America"
        ELSE "Europe" 
    END as "continent"
FROM sales;


--Display how many purchases were shipped to each continent. 
SELECT COUNT(*), 
    CASE 
        WHEN country = "South Africa" THEN "Africa"
        WHEN country = "Australia" THEN "Australia"
        WHEN country = "India" OR "Israel" OR "United Arab Emirates" THEN "Asia"
        WHEN country = "Canada" OR "United States" THEN "North America"
        ELSE "Europe" 
    END as "continent"
FROM sales
GROUP BY continent; 
