 Task 3: SQL Basics using Chinook Database

SELECT * FROM Customer LIMIT 10;
SELECT * FROM Customer WHERE Country = 'USA';

SELECT InvoiceId, Total FROM Invoice ORDER BY Total DESC LIMIT 10;

SELECT SUM(Total) FROM Invoice;

SELECT BillingCountry, SUM(Total)
FROM Invoice
GROUP BY BillingCountry;


SELECT BillingCountry, SUM(Total)
FROM Invoice
GROUP BY BillingCountry
HAVING SUM(Total) > 100;


SELECT 
    c.FirstName || ' ' || c.LastName AS customer_name,
    SUM(i.Total) AS total_spent
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 5;
