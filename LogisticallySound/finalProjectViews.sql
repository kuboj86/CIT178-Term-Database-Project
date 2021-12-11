/* Final Project Views */
USE LogisticallySound

/*View 1
--Updatable View--
GO
CREATE VIEW v_Orders
AS
SELECT OrderID, CreatedDate, CustomerID,LocationID,Cancelled,DeliveryDate
FROM Orders;
GO

GO 
INSERT INTO v_Orders
VALUES(1012,'2021-11-16',107,4,0,'')
GO

SELECT * FROM Orders
SELECT * FROM v_Orders*/

/*View 2

--Create View--
GO
CREATE VIEW v_Customers
AS SELECT CustomerID,FirstName,LastName,Address1,Address2,ZipCode,PhoneNumber,EmailAddress
FROM Customer;
GO
SELECT * FROM v_Customers*/

/*View 3

GO 
CREATE VIEW v_NoGroceryOrders
AS SELECT OrderDetailID, OrderID, ProductTypeID
FROM OrderDetails
WHERE ProductTypeID <>1
GO

--Should be no orders with ProductTypeID of 1 within the View
SELECT * FROM v_NoGroceryOrders*/

/*View 4

GO
--Imaging locations part of a particular company are no longer being serviced.
CREATE VIEW V_ActiveLocations
AS SELECT LocationID, CompanyID, Address1,ZipCode,ContactFName,ContactLName,BusinessPhone,FaxNumber
FROM Locations
WHERE CompanyID in(1,3,4)
GO

SELECT * FROM V_ActiveLocations;*/
