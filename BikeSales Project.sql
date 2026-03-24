CREATE DATABASE BikeStoreDB;
USE BikeStoreDB;

-- 1. Customers table
CREATE TABLE Customers(
     CustomerID INT PRIMARY KEY AUTO_INCREMENT,
     FirstName VARCHAR(50),
     LastName VARCHAR(50),
     Email VARCHAR(100),
     City VARCHAR(50),
     Country VARCHAR(50)
	
);

-- Bikes Table
CREATE TABLE Bikes(
BikeID INT PRIMARY KEY AUTO_INCREMENT,
Brand VARCHAR(50),
Model VARCHAR(50),
Category VARCHAR (50),
Price DECIMAL (10,2)

);



-- Stores Table
CREATE TABLE Stores (
     StoreID INT PRIMARY KEY AUTO_INCREMENT,
     StoreName VARCHAR(100),
     City VARCHAR(50),
     Country VARCHAR (50)

);

-- Sales Table
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    BikeID INT,
    StoreID INT,
    SaleDate DATE,
    Quantity INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (BikeID) REFERENCES Bikes(BikeID),
    FOREIGN KEY (StoreID) REFERENCES Stores(StoreID)

);

INSERT INTO Customers (FirstName, LastName, Email, City, Country)
VALUES ('Rahul', 'Sharma', 'rahul.sharma@email.com', 'Delhi', 'India'),
       ('Anita', 'Patel', 'anita.patel@email.com', 'Mumbai', 'India');

INSERT INTO Bikes (Brand, Model, Category, Price)
VALUES ('Trek', 'Domane AL 2', 'Road', 75000),
       ('Giant', 'Escape 3', 'Hybrid', 35000);

INSERT INTO Stores (StoreName, City, Country)
VALUES ('Cycle World', 'Delhi', 'India'),
       ('Bike Hub', 'Mumbai', 'India');

INSERT INTO Sales (CustomerID, BikeID, StoreID, SaleDate, Quantity)
VALUES (1, 1, 1, '2026-03-01', 1),
       (2, 2, 2, '2026-03-05', 2);
       
SELECT B.Brand, B.Model, SUM(S.Quantity) AS TotalSold FROM Sales S 
JOIN Bikes B ON S.BikeID = B.BikeID
GROUP BY B.Brand, B.Model
ORDER BY TotalSold DESC;

SELECT St.StoreName, SUM(B.Price * S.Quantity) AS Revenue
FROM Sales S
JOIN Bikes B ON S.BikeID = B.BikeID
JOIN Stores St ON S.StoreID = St.StoreID
GROUP BY St.StoreName
ORDER BY Revenue DESC;

SELECT C.FirstName, C.LastName, B.Brand, B.Model, S.SaleDate
FROM Sales S
JOIN Customers C ON S.CustomerID = C.CustomerID
JOIN Bikes B ON S.BikeID = B.BikeID
ORDER BY S.SaleDate DESC;
