/*Task #1 
USE AP;
DECLARE @TotalAmount money;
SET @TotalAmount = (SELECT SUM(InvoiceTotal) FROM Invoices WHERE VendorID = 123)
PRINT @TotalAmount

DECLARE @VendorsLastYear table
(VendorName varchar(50),
	InvoiceID int,
	InvoiceDate date);

INSERT @VendorsLastYear
SELECT v.VendorName,i.InvoiceID, i.InvoiceDate
FROM Invoices i
JOIN Vendors v on i.VendorID = v.VendorID 
WHERE i.InvoiceDate >='01-01-2020'

SELECT * FROM @VendorsLastYear*/

/*TASK #2*/

USE Northwind;

CREATE

/*TASK #3*/

USE Northwind;
select * from Orders order by Freight desc
DECLARE @ShipCountryUSA varchar(50);
SELECT @ShipCountryUSA = orderid from Orders where Freight > 800
	if(@ShipCountryUSA
