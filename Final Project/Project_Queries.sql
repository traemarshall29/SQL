/* #1 Show Customers (their full names, customer ID, and country) who are not in the US. (Hint: != or <> can be used to say "is not equal to"). */
SELECT CustomerId, FirstName, LastName, Country FROM chinook.customers 
WHERE country <> "USA" ;

/* #2 Show only the Customers from Brazil.*/
SELECT * FROM chinook.customers 
WHERE country = "Brazil" ;

/* #3 Find the Invoices of customers who are from Brazil. The resulting table should show the customer's full name, Invoice ID, Date of the invoice, and billing country.*/
SELECT cust.FirstName, cust.LastName, inv.InvoiceID, inv.InvoiceDate, inv.BillingCountry 
FROM chinook.invoices AS inv
LEFT JOIN chinook.customers AS cust
ON inv.CustomerID = cust.CustomerID
WHERE inv.BillingCountry = 'Brazil' ;

/* #4 Show the Employees who are Sales Agents.*/
SELECT * FROM chinook.employees 
WHERE Title = "Sales Support Agent" ;

/* #5 Find a unique/distinct list of billing countries from the Invoice table.*/
SELECT DISTINCT BillingCountry FROM chinook.invoices 
ORDER BY BillingCountry ASC;

/* #6 Provide a query that shows the invoices associated with each sales agent. The resulting table should include the Sales Agent's full name.*/
SELECT emp.FirstName, emp.LastName, inv.InvoiceId
FROM chinook.invoices AS inv
    JOIN chinook.customers AS cust
    ON inv.CustomerId = cust.CustomerId
    JOIN chinook.employees AS emp
    ON cust.SupportRepId = emp.EmployeeId ;

/* 7 Show the Invoice Total, Customer name, Country, and Sales Agent name for all invoices and customers.*/
SELECT cust.FirstName, cust.LastName, emp.FirstName, emp.LastName, cust.Country, inv.total
FROM chinook.invoices AS inv
    JOIN chinook.customers AS cust
    ON inv.CustomerId = cust.CustomerId
    JOIN chinook.employees AS emp
    ON cust.SupportRepId = emp.EmployeeId ;

/* #8 How many Invoices were there in 2009?*/
SELECT COUNT(*)
FROM chinook.invoices
WHERE InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31' ;

/* #9 What are the total sales for 2009?*/
SELECT SUM(Total) 
FROM chinook.invoices 
WHERE InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31' ;

/* #10 Write a query that includes the purchased track name with each invoice line ID.*/

SELECT tr.trackID, tr.name, inv.invoicelineid 
FROM chinook.tracks AS tr
JOIN chinook.invoice_items AS inv
ON tr.trackid = inv.trackid ;

/* #11 Write a query that includes the purchased track name AND artist name with each invoice line ID.*/
SELECT  art.name AS artist, tr.name as Track, inv.invoicelineid
FROM chinook.invoice_items AS inv
    LEFT JOIN chinook.tracks AS tr
    ON inv.trackid = tr.trackid 
    LEFT JOIN chinook.albums AS alb
    ON tr.albumid = alb.albumid
    LEFT JOIN chinook.artists AS art
    ON alb.artistid = art.artistid ;

/* #12 Provide a query that shows all the Tracks, and include the Album name, Media type, and Genre.*/
SELECT tr.name AS track, alb.title AS album, med.name AS media_type, gen.name AS genre
FROM chinook.albums AS alb
    JOIN chinook.tracks AS tr
    ON alb.albumid = tr.albumid
    JOIN chinook.media_types as med
    ON tr.mediatypeid = med.mediatypeid
    JOIN chinook.genres AS gen
    ON tr.genreid = gen.genreid;

/* #13 Show the total sales made by each sales agent.*/
SELECT emp.firstname, emp.lastname, ROUND(SUM(Total), 2) AS 'Total Sales' 
FROM chinook.invoices AS inv
    JOIN chinook.customers AS cust
    ON inv.customerid = cust.customerid
    JOIN chinook.employees AS emp
    ON cust.supportrepid = emp.employeeid
GROUP BY emp.employeeid ;

/* #14 Which sales agent made the most dollars in sales in 2009?*/
SELECT emp.firstname, emp.lastname, ROUND(SUM(Total), 2) AS 'Total Sales' 
FROM chinook.invoices AS inv
    JOIN chinook.customers AS cust
    ON inv.customerid = cust.customerid
    JOIN chinook.employees AS emp
    ON cust.supportrepid = emp.employeeid
GROUP BY emp.employeeid 
ORDER BY (ROUND(SUM(Total), 2))  DESC LIMIT 1;
