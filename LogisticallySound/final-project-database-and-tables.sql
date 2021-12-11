CREATE DATABASE LogisticallySound

GO
USE LogisticallySound;
CREATE TABLE Orders(
	OrderID int NOT NULL,
	CreatedDate datetime NOT NULL,
	CustomerID int NOT NULL,
	LocationID int NOT NULL,
	Cancelled int,
	DeliveryDate datetime,
	PRIMARY KEY(OrderID)
);
GO
CREATE TABLE OrderDetails(
	OrderDetailID int NOT NULL,
	OrderID int NOT NULL,
	ProductTypeID int NOT NULL,
	PRIMARY KEY(OrderDetailID)
);
GO
CREATE TABLE ProductTypes(
	ProductID int NOT NULL,
	ProdcutType varchar(30) NOT NULL,
	PRIMARY KEY(ProductID)
);
GO
CREATE TABLE Customer(
	CustomerID int NOT NULL,
	FirstName varchar(50) NOT NULL,
	MiddleInitial char(1),
	LastName varchar(50) NOT NULL,
	Address1 varchar(100) NOT NULL,
	Address2 varchar(30) NOT NULL,
	ZipCode varchar(12) NOT NULL,
	PhoneNumber varchar(12) NOT NULL,
	EmailAddress varchar(50),
	PRIMARY KEY(CustomerID)
);
GO
CREATE TABLE ZipCode(
	ZipCode varchar(12) NOT NULL,
	City varchar(30) NOT NULL,
	State varchar(2) NOT NULL,
	PRIMARY KEY(ZipCode)
);
GO
CREATE TABLE Company(
	CompanyID int NOT NULL,
	CompanyName varchar(50) NOT NULL,
	Website varchar(50),
	PRIMARY KEY(CompanyID)
);
GO
CREATE TABLE Locations(
	LocationID int NOT NULL,
	CompanyID int NOT NULL,
	Address1 varchar(50) NOT NULL,
	Address2 varchar(30) NOT NULL,
	ZipCode varchar(12) NOT NULL,
	ContactFName varchar(50) NOT NULL,
	ContactLName varchar(50) NOT NULL,
	BusinessPhone varchar(15) NOT NULL,
	FaxNumber varchar(15),
	PRIMARY KEY(LocationID)
);