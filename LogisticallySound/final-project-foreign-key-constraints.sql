USE LogisticallySound

ALter TABLE Orders WITH CHECK
ADD CONSTRAINT FK_CustomerID FOREIGN KEY(CustomerID) REFERENCES Customer(CustomerID)
ON UPDATE CASCADE
GO

ALTER TABLE Orders WITH CHECK
ADD CONSTRAINT FK_LocationID FOREIGN KEY(LocationID) REFERENCES Locations(LocationID)
ON UPDATE CASCADE
GO

ALTER TABLE OrderDetails WITH CHECK
ADD CONSTRAINT FK_OrderID FOREIGN KEY(OrderID) REFERENCES Orders(OrderID)
ON UPDATE CASCADE
GO

ALTER TABLE OrderDetails WITH CHECK
ADD CONSTRAINT FK_ProductTypeID FOREIGN KEY(ProductTypeID) REFERENCES ProductTypes(ProductID)
ON UPDATE CASCADE
GO

ALTER TABLE Customer WITH CHECK
ADD CONSTRAINT FK_ZipCode FOREIGN KEY(ZipCode) REFERENCES ZipCode(ZipCode)
ON UPDATE CASCADE
GO

ALTER TABLE Locations WITH CHECK
ADD CONSTRAINT FK_CompanyID FOREIGN KEY(CompanyID) REFERENCES Company(CompanyID)
ON UPDATE CASCADE
GO

ALTER TABLE Locations WITH CHECK
ADD CONSTRAINT FK_ZipCode_2 FOREIGN KEY(ZipCode) REFERENCES ZipCode(ZipCode)
--ON UPDATE CASCADE
GO
--I had to comment this out or else I received an error creating the constraint.
--Introducing FOREIGN KEY constraint 'FK_ZipCode_2' on table 'Locations' may cause cycles or multiple cascade paths. 
--Specify ON DELETE NO ACTION or ON UPDATE NO ACTION, or modify other FOREIGN KEY constraints.
--Msg 1750, Level 16, State 1, Line 33
--Could not create constraint or index. See previous errors.
