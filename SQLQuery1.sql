CREATE DATABASE SQL2;

USE SQL2;

--CREATE TABLE [Users](
--  [Id] INT PRIMARY KEY IDENTITY,
--  [Username] VARCHAR(64) NOT NULL,
--  [Password] VARCHAR(64) NOT NULL
--);
--drop table [Users]

--CREATE TABLE [Roles](
--  [Id] INT PRIMARY KEY IDENTITY,
--  [Name] VARCHAR(64) NOT NULL
--);
--drop table [Roles]

--CREATE TABLE [UsersRoles](
--  [UserId] INT REFERENCES [Users](Id),
--  [RoleId] INT REFERENCES [Roles](Id)
--);
--drop table [UsersRoles]

--INSERT INTO [Roles] VALUES
--('Admin'),
--('Moderator'),
--('JustUser');

--INSERT INTO [Users] VALUES
--('Sabuhi','salam123'),
--('Nijat','salam456'),
--('Aykhan','salam789');

--INSERT INTO [UsersRoles] VALUES
--(1,1),
--(2,2),
--(3,3);

--SELECT u.Username, r.Name Role
--FROM [Users] AS u
--INNER JOIN [UsersRoles] AS ur ON u.Id = ur.UserId
--INNER JOIN [Roles] AS r ON ur.RoleId = r.Id;

--Task 2
CREATE TABLE [Categories](
  [Id] INT PRIMARY KEY IDENTITY,
  [Name] VARCHAR(64) NOT NULL
);

CREATE TABLE [Products](
  [Id] INT PRIMARY KEY IDENTITY,
  [Name] VARCHAR(64) NOT NULL,
  [Price] INT,
  [Cost] INT,
  [CategoryId] INT REFERENCES [Categories](Id) 
);

CREATE TABLE [Colors](
  [Id] INT PRIMARY KEY IDENTITY,
  [Name] VARCHAR(64) NOT NULL
);

CREATE TABLE [ProductsColors](
  Id INT PRIMARY KEY IDENTITY,
  [ProductId] INT REFERENCES [Products](Id),
  [ColorId] INT REFERENCES [Colors](Id)
);

INSERT INTO [Categories] ([Name]) VALUES
  ('15 Pro Max'),
  ('Z Fold 5'),
  ('Black Shark 5 Pro');

INSERT INTO [Products] ([Name], [Price], [Cost], [CategoryId]) VALUES
  ('Iphone', 799, 1199, 1),  
  ('Samsung', 700, 1000, 2), 
  ('Xiaomi', 500, 799, 3); 

INSERT INTO [Colors] ([Name]) VALUES
  ('Midnight'),
  ('Starlight'),
  ('Product Red'),
  ('Blue');

INSERT INTO [ProductsColors] VALUES
  (1, 1),
  (1, 3),
  (2, 1),
  (2, 4),
  (3, 2),
  (3, 3),
  (3, 4);


  

  
SELECT p.Name as [Product Name], c.Name as [Category Name], cl.Name as [Color Name]
FROM Products p
JOIN Categories c ON p.CategoryId = c.Id
JOIN ProductsColors pc ON p.Id = pc.ProductId
JOIN Colors cl ON pc.ColorId = cl.Id;



  






