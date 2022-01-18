 Create Database Market
 Use Market
 Create Table Products
 (
 ID int primary key identity,
 Name nvarchar(40),
 Price smallmoney
 )
 Alter Table Products Add Brand nvarchar(30)

 SET IDENTITY_INSERT Products ON

 Insert into Products(ID,Name,Price,Brand) 
  values(1,'Un',1,'Karmen'),
 (2,'Yag',5,'Mocuze'),
 (3,'Seker',2,'Azersun'),
 (4,'Duyu',1.4,'Richmond'),
 (5,'Duz',0.6,'AzerDuz'),
 (6,'Corek',1,'Bine'),
 (7,'Icki',2,'Cola'),
 (8,'Su',1,'Sirab'),
 (9,'Toyuq',18,'Siyezen'),
 (10,'Kolbasa',15,'Seba')

Select * from Products where Price>(select avg(Price) from Products)
Select * from Products where Price>10
Select Name+Brand as 'ProductInfo' from Products where Len(Brand)>5
