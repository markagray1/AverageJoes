USE #Placeholder
GO

DROP VIEW IF EXISTS ViewProductList
GO

DROP TABLE IF EXISTS Product
DROP TABLE IF EXISTS ProductType
DROP TABLE IF EXISTS ProductSize
DROP TABLE IF EXISTS ProductColor
GO

CREATE TABLE ProductType 
(
	ProductTypeID int IDENTITY(1,1) CONSTRAINT pkProductTypeID PRIMARY KEY NOT NULL,
	ProductTypeName varchar(25) NOT NULL
)

CREATE TABLE ProductSize
(
	ProductSizeID int IDENTITY(1,1) CONSTRAINT pkProductSizeID PRIMARY KEY NOT NULL,
	ProductSizeName varchar(25) NOT NULL
)

CREATE TABLE ProductColor
(
	ProductColorID int IDENTITY(1,1) Constraint pkProductColorID PRIMARY KEY NOT NULL,
	ProductColorName varchar(25) NOT NULL
)

CREATE TABLE Product
(
	ProductID int IDENTITY(1,1) CONSTRAINT pkProductID PRIMARY KEY NOT NULL,
	ProductName varchar(100) NOT NULL,
	ProductDescription varchar(200) NULL,
	ProductPrice decimal(4,2) NOT NULL,
	ImagePath varchar(200) NOT NULL,
	ProductColorID int NOT NULL CONSTRAINT fkProductColorID FOREIGN KEY REFERENCES ProductColor(ProductColorID),
	ProductSizeID int NOT NULL CONSTRAINT fkProductSizeID FOREIGN KEY REFERENCES ProductSize(ProductSizeID),
	ProductTypeID int NOT NULL CONSTRAINT fkProductTypeID FOREIGN KEY REFERENCES ProductType(ProductTypeID)
)

INSERT INTO ProductType (ProductTypeName)
VALUES ('Jersey'), ('Jersey Shorts'), ('Headband'), ('Wristbands'), ('Short-sleeve'), ('Long-sleeve'), ('Tank Top'), ('Sweatshirt'), ('Shorts'), ('Hat') 

INSERT INTO ProductSize (ProductSizeName)
VALUES ('Small'), ('Medium'), ('Large')

INSERT INTO ProductColor (ProductColorName)
VALUES ('Yellow'), ('White'), ('Gray')

INSERT INTO Product (ProductName, ProductDescription, ProductPrice, ImagePath, ProductTypeID, ProductSizeID, ProductColorID)
VALUES 
('Average Joe''s Jersey', NULL, 39.99, '/Images/Jersey.jpg', 1, 2, 1),
('Average Joe''s Jersey Shorts', NULL, 29.99, '/Images/Jersey Shorts.jpg',2, 1, 3),
('Average Joe''s Headband', NULL, 9.99, '/Images/Headband.jpg',3, 1,2),
('Average Joe''s Wristbands', NULL, 4.99, '/Images/Wristbands.jpg',4,3,3),
('Average Joe''s Short-Sleeve', NULL, 19.99, '/Images/Short-Sleeve.jpg', 5,1,2),
('Average Joe''s Long-Sleeve', NULL, 19.99, '/Images/Long-Sleeve.jpg', 6,2,1),
('Average Joe''s Tank Top', NULL, 19.99,  '/Images/Tank Top.jpg',7,1,3),
('Average Joe''s Sweatshirt', NULL, 29.99,  '/Images/Sweatshirt.jpg',8,3,2),
('Average Joe''s Shorts', NULL, 19.99,  '/Images/Shorts.jpg',9,1,1),
('Average Joe''s Hat', NULL, 14.99,  '/Images/Hat.jpg',10,2,2)

GO
CREATE view ViewProductList
AS
SELECT p.ProductID, tp.ProductTypeName, st.ProductSizeName, ct.ProductColorName, p.ProductName, p.ProductDescription, p.ProductPrice, p.ImagePath, tp.ProductTypeID, st.ProductSizeID, ct.ProductColorID
FROM Product p
INNER JOIN ProductType tp ON p.ProductTypeID = tp.ProductTypeID
INNER JOIN ProductSize st ON p.ProductSizeID = st.ProductSizeID
INNER JOIN ProductColor ct ON p.ProductColorID = ct.ProductColorID;
GO





