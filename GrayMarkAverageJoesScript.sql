use SP23_Web_ksmgray18
go

drop view if exists ViewProductList
go

Drop Table if exists Product
Drop Table if exists ProductType
drop table if exists ProductSize
Drop table if exists ProductColor
go

--create view viewProduct
--as
--select ProductID, ProductName, ProductSize, ProductColor, ProductQuality, ProductPrice, ImagePath
--from product p join ProductType pt on p.ProductID = pt.ProductTypeID
--go

create Table ProductType 
(
	ProductTypeID int Identity(1,1) Constraint pkProductTypeID Primary Key not null,
	ProductTypeName varchar(25) not null
)

create Table ProductSize
(
	ProductSizeID int Identity(1,1) Constraint pkProductSizeID Primary Key not null,
	ProductSizeName varchar(25) not null
)

create table ProductColor
(
	ProductColorID int Identity(1,1) Constraint pkProductColorID Primary Key not null,
	ProductColorName varchar(25) not null
)

create Table Product
(
	ProductID int Identity(1,1) Constraint pkProductID Primary Key not null,
	ProductName varchar(100) not null,
	ProductDescription varchar(200) null,
	ProductPrice decimal(4,2) not null,
	ImagePath varchar(200) not null,
	ProductColorID int not null Constraint fkProductColorID Foreign Key references ProductColor(ProductColorID),
	ProductSizeID int not null Constraint fkProductSizeID Foreign Key references ProductSize(ProductSizeID),
	ProductTypeID int not null Constraint fkProductTypeID Foreign Key references ProductType(ProductTypeID)
)

Insert Into ProductType (ProductTypeName)
values ('Jersey'), ('Jersey Shorts'), ('Headband'), ('Wristbands'), ('Short-sleeve'), ('Long-sleeve'), ('Tank Top'), ('Sweatshirt'), ('Shorts'), ('Hat') 

insert into ProductSize (ProductSizeName)
values ('Small'), ('Medium'), ('Large')

insert into ProductColor (ProductColorName)
values ('Yellow'), ('White'), ('Gray')

INSERT INTO Product (ProductName, ProductDescription, ProductPrice, ImagePath, ProductTypeID, ProductSizeID, ProductColorID)
VALUES 
('Average Joe''s Jersey', null, 39.99, '/Images/Jersey.jpg', 1, 2, 1),
('Average Joe''s Jersey Shorts', null, 29.99, '/Images/Jersey Shorts.jpg',2, 1, 3),
('Average Joe''s Headband', null, 9.99, '/Images/Headband.jpg',3, 1,2),
('Average Joe''s Wristbands', null, 4.99, '/Images/Wristbands.jpg',4,3,3),
('Average Joe''s Short-Sleeve', null, 19.99, '/Images/Short-Sleeve.jpg', 5,1,2),
('Average Joe''s Long-Sleeve', null, 19.99, '/Images/Long-Sleeve.jpg', 6,2,1),
('Average Joe''s Tank Top', null, 19.99,  '/Images/Tank Top.jpg',7,1,3),
('Average Joe''s Sweatshirt', null, 29.99,  '/Images/Sweatshirt.jpg',8,3,2),
('Average Joe''s Shorts', null, 19.99,  '/Images/Shorts.jpg',9,1,1),
('Average Joe''s Hat', null, 14.99,  '/Images/Hat.jpg',10,2,2)

go
create view ViewProductList
as
SELECT p.ProductID, tp.ProductTypeName, st.ProductSizeName, ct.ProductColorName, p.ProductName, p.ProductDescription, p.ProductPrice, p.ImagePath, tp.ProductTypeID, st.ProductSizeID, ct.ProductColorID
FROM Product p
INNER JOIN ProductType tp ON p.ProductTypeID = tp.ProductTypeID
inner join ProductSize st on p.ProductSizeID = st.ProductSizeID
inner join ProductColor ct on p.ProductColorID = ct.ProductColorID;
go

--select * from ViewProductList where ProductTypeID = 1;




