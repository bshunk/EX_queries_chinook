-- 1. Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.
SELECT FirstName, LastName, CustomerId, Country FROM Customer WHERE Country IS NOT "USA"

-- 2. Provide a query only showing the Customers from Brazil.
SELECT * FROM Customer WHERE Country IS "Brazil"

-- 3. Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.
SELECT c.FirstName, c.LastName, i.InvoiceId, i.InvoiceDate, i.BillingCountry 
FROM Customer c LEFT JOIN Invoice i WHERE c.Country IS "Brazil" 

-- 4. Provide a query showing only the Employees who are Sales Agents.
SELECT * FROM Employee WHERE Title IS "Sales Support Agent"

-- 5. Provide a query showing a unique list of billing countries from the Invoice table.
