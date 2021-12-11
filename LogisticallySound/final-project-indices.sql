USE LogisticallySound

CREATE INDEX idx_ZipCode ON Customer(ZipCode);
CREATE INDEX idx_CompanyID ON Company(CompanyID);
CREATE INDEX idx_ZipCode ON Locations(ZipCode);
CREATE INDEX idx_OrderID ON OrderDetails(OrderID);
CREATE INDEX idx_ProductTypeID ON OrderDetails(ProductTypeID);
CREATE INDEX idx_CustomerID ON Orders(CustomerID);
CREATE INDEX idx_LocationID ON Orders(LocationID);



