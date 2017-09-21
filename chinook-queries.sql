-- 1. Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.
SELECT FirstName, LastName, CustomerId, Country FROM Customer WHERE Country IS NOT "USA";

-- 2. Provide a query only showing the Customers from Brazil.
SELECT * FROM Customer WHERE Country IS "Brazil";

-- 3. Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.
SELECT c.FirstName, c.LastName, i.InvoiceId, i.InvoiceDate, i.BillingCountry 
FROM Customer c LEFT JOIN Invoice i WHERE c.Country IS "Brazil" ;

-- 4. Provide a query showing only the Employees who are Sales Agents.
SELECT * FROM Employee WHERE Title IS "Sales Support Agent";

-- 5. Provide a query showing a unique list of billing countries from the Invoice table.
SELECT DISTINCT BillingCountry From Invoice;

-- 6. Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.
SELECT DISTINCT i.InvoiceId, e.FirstName, e.LastName
FROM Invoice i
INNER JOIN Customer c ON c.CustomerId = i.CustomerId
INNER JOIN Employee e ON e.EmployeeId = c.SupportRepId;

-- 7. Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
SELECT i.Total, c.FirstName, c.LastName, c.Country, i.BillingCountry, e.FirstName, e.LastName
FROM Invoice i
INNER JOIN Customer c ON c.CustomerId = i.CustomerId
INNER JOIN Employee e ON e.EmployeeId = c.SupportRepId; 

-- 8. How many Invoices were there in 2009 and 2011? What are the respective total sales for each of those years?

-- 9. Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.
SELECT InvoiceId, COUNT(InvoiceLineId) FROM InvoiceLine WHERE InvoiceId = "37"

-- 10. 