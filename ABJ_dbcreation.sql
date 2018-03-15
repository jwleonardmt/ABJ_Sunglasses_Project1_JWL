/*ABJ Sunglasses- Alden Pexton, Brett Bottomley, John Leonard*/
CREATE DATABASE ABJsunglassesDB
CREATE TABLE Product (
	ProductID int,
	ProductName varchar(255),
	RetailPrice int,
	SupplierID int
	PRIMARY KEY (ProductID),
    FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID)
);
CREATE TABLE Supplier (
	SupplierID int,
	Phone# varchar(10),
	Email varchar(255),
	SupplierName varchar(255),
	TerritoryID int
	PRIMARY KEY (SupplierID),
    FOREIGN KEY (TerritoryID) REFERENCES Territory(TerritoryID)
);
CREATE TABLE Customer (
	CustomerID int,
	FirstName varchar(255),
	LastName varchar(255),
	Email varchar(255),
	Phone# varchar(10),
	TerritoryID int 
	PRIMARY KEY (CustomerID),
    FOREIGN KEY (TerritoryID) REFERENCES Territory(TerritoryID)
);
CREATE TABLE Sales (
	SalesOrderID int,
	OrderQty int,
	TotalPrice int,
	OrderDate int,
	CreditCard varchar(16),
	ProductID int,
	CustomerID int,
	PRIMARY KEY (SalesOrderID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
	FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);
CREATE TABLE Territory (
	TerritoryID int,
	Address varchar(255),
	City varchar(255),
	State varchar(255),
	Country varchar(255),
	PRIMARY KEY (TerritoryID)
);

/*Inserting Data into the Product Table*/
INSERT INTO Product(ProductID, ProductName, RetailPrice, SupplierID)
VALUES (1,'Avaitor',200, 1)

INSERT INTO Product(ProductID, ProductName, RetailPrice, SupplierID)
VALUES (2,'Avaitor2',200, 1)

INSERT INTO Product(ProductID, ProductName, RetailPrice, SupplierID)
VALUES (3,'Avaitor3',200, 2)

INSERT INTO Product(ProductID, ProductName, RetailPrice, SupplierID)
VALUES (4,'Avaitor4',200, 2)

INSERT INTO Product(ProductID, ProductName, RetailPrice, SupplierID)
VALUES (5,'Avaitor5',200, 2)

INSERT INTO Product(ProductID, ProductName, RetailPrice, SupplierID)
VALUES (6,'Browline',180, 3)

INSERT INTO Product(ProductID, ProductName, RetailPrice, SupplierID)
VALUES (7,'Browline2',180, 3)

INSERT INTO Product(ProductID, ProductName, RetailPrice, SupplierID)
VALUES (8,'Browline3',180, 4)

INSERT INTO Product(ProductID, ProductName, RetailPrice, SupplierID)
VALUES (9,'Browline4',180, 4)

INSERT INTO Product(ProductID, ProductName, RetailPrice, SupplierID)
VALUES (10,'Browline5',180, 4)

INSERT INTO Product(ProductID, ProductName, RetailPrice, SupplierID)
VALUES (11,'Round',225, 5)

INSERT INTO Product(ProductID, ProductName, RetailPrice, SupplierID)
VALUES (12,'Round2',225, 5)

INSERT INTO Product(ProductID, ProductName, RetailPrice, SupplierID)
VALUES (13,'Round3',225, 6)

INSERT INTO Product(ProductID, ProductName, RetailPrice, SupplierID)
VALUES (14,'Round4',225, 6)

INSERT INTO Product(ProductID, ProductName, RetailPrice, SupplierID)
VALUES (15,'Sport',215, 7)

INSERT INTO Product(ProductID, ProductName, RetailPrice, SupplierID)
VALUES (16,'Sport2',215, 7)

INSERT INTO Product(ProductID, ProductName, RetailPrice, SupplierID)
VALUES (17,'Sport3',215, 8)

INSERT INTO Product(ProductID, ProductName, RetailPrice, SupplierID)
VALUES (18,'Sport4',215, 8)

INSERT INTO Product(ProductID, ProductName, RetailPrice, SupplierID)
VALUES (19,'Reto',250, 9)

INSERT INTO Product(ProductID, ProductName, RetailPrice, SupplierID)
VALUES (20,'Retro2',250, 10)


/*Inserting Data into the Supplier Table*/
INSERT INTO Supplier(SupplierID, Phone#, Email, SupplierName, TerritoryID)
VALUES (1, 4102349856, 'swaggys@gmail.com', 'SwaggyS', 1)

INSERT INTO Supplier(SupplierID, Phone#, Email, SupplierName, TerritoryID)
VALUES (2, 2313458798, 'redhotshades@yahoo.com', 'RedHotShades', 1)

INSERT INTO Supplier(SupplierID, Phone#, Email, SupplierName, TerritoryID)
VALUES (3, 2062134576, 'seatownshades@outlook.com', 'SeatownShades', 1)

INSERT INTO Supplier(SupplierID, Phone#, Email, SupplierName, TerritoryID)
VALUES (4, 7102398712, 'delleyewear@gmail.com', 'DellEyeWear', 2)

INSERT INTO Supplier(SupplierID, Phone#, Email, SupplierName, TerritoryID)
VALUES (5, 8067559832, 'northsidesupplies@gmail.com', 'NorthSideSupplies', 2)

INSERT INTO Supplier(SupplierID, Phone#, Email, SupplierName, TerritoryID)
VALUES (6, 5602348790, 'iashades@yahoo.com', 'IAShades', 2)

INSERT INTO Supplier(SupplierID, Phone#, Email, SupplierName, TerritoryID)
VALUES (7, 4253429896, 'eastsidetrade@msn.com', 'EastSideTrade', 3)

INSERT INTO Supplier(SupplierID, Phone#, Email, SupplierName, TerritoryID)
VALUES (8, 8183426578, 'sunshine@yahoo.com', 'Sunshine', 3)

INSERT INTO Supplier(SupplierID, Phone#, Email, SupplierName, TerritoryID)
VALUES (9, 4120984537, 'steelersshades@gmail.com', 'SteelersShades', 4)

INSERT INTO Supplier(SupplierID, Phone#, Email, SupplierName, TerritoryID)
VALUES (10, 6542349876, 'midwestdeals@msn.com', 'MidWestDeals', 4)

INSERT INTO Supplier(SupplierID, Phone#, Email, SupplierName, TerritoryID)
VALUES (11, 3144329845 , 'premiershades@gmail.com', 'PremierShades', 4)

INSERT INTO Supplier(SupplierID, Phone#, Email, SupplierName, TerritoryID)
VALUES (12, 8794327564 , 'truenorth@yahoo.com', 'TrueNorth', 5)

INSERT INTO Supplier(SupplierID, Phone#, Email, SupplierName, TerritoryID)
VALUES (13, 3012349878, 'allstarshades@yahoo.com', 'AllStarShades', 5)

INSERT INTO Supplier(SupplierID, Phone#, Email, SupplierName, TerritoryID)
VALUES (14, 4561239808, 'countrytime@gmail.com', 'CountryTime', 6)

INSERT INTO Supplier(SupplierID, Phone#, Email, SupplierName, TerritoryID)
VALUES (15, 9084569291, 'ballsohard@msn.com', 'BallSoHard', 6)

INSERT INTO Supplier(SupplierID, Phone#, Email, SupplierName, TerritoryID)
VALUES (16, 5013489365, 'springbreakshades@yahoo.com', 'SpringBreakShades', 7)

INSERT INTO Supplier(SupplierID, Phone#, Email, SupplierName, TerritoryID)
VALUES (17, 2067550033, 'scurryshades@gmail.com', 'StephCurryShades', 8)

INSERT INTO Supplier(SupplierID, Phone#, Email, SupplierName, TerritoryID)
VALUES (18, 2120094321, 'firstchoice@outlook.com', 'FirstChoice', 8)

INSERT INTO Supplier(SupplierID, Phone#, Email, SupplierName, TerritoryID)
VALUES (19, 4318763425, 'therealthing@yahoo.com', 'TheRealThing', 9)

INSERT INTO Supplier(SupplierID, Phone#, Email, SupplierName, TerritoryID)
VALUES (20, 8324879096, 'luxuryshades@yahoo.com', 'LuxuryShades', 10)

/*Inserting Data into the Customer Table*/
INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (1, 'Joe', 'Thomas', 'jthomas@yahoo.com', 2343219293, 1)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (2, 'Martha', 'Rose', 'martharose@msn.com', NULL, 1)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (3, 'Joey', 'Arnold', 'jarnold@gmail.com', 4432090084, 2)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (4, 'Tom', 'Fabel', 'tomfabel1@yahoo.com', 2091874492, 2)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (5, 'Sarah', 'Moore', 'smoore23@gmail.com', 4094229984, 4)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (6, 'Stephanie', 'Riley', 'sriley1@yahoo.com', 4492203391, 3)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (7, 'Noah', 'Miles', 'noahmiles45@gmail.com', 4489934450, 5)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (8, 'Parker', 'Bixby', 'pbixby@outlook.com', 4313033399, 7)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (9, 'William', 'Pierre', 'wpierre1@gmail.com', 4472298743, 6)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (10, 'Alex', 'Dell', 'adell2@yahoo.com', 4432009871, 4)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (11, 'Olivia', 'Coles', 'oliviacoles32@msn.com', 5822284343, 3)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (12, 'Riley', 'Smith', 'rileysmith2@yahoo.com', 2203349194, 8)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (13, 'Maria', 'Garcia', 'mgarcia@yahoo.com', 5438884499, 9)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (14, 'Mary', 'Johnson', 'maryjohnson@gmail.com', 4539922209, 1)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (15, 'JT', 'Swingly', 'jtswingly22@msn.com', 9945500032, 10)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (16, 'JoJo', 'McTine', 'jmctine@yahoo.com', 8902285511, 10)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (17, 'Madison', 'James', 'mjames33@gmail.com', 5583399095, 2)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (18, 'Carly', 'Binister', 'cbinister@yahoo.com', NULL, 3)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (19, 'Lindsay', 'Jacobs', 'lindsayjacobs@msn.com', 1984432299, 2)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (20, 'Mohammed', 'Azil', 'mohammedazil2@outlook.com', 2239873010, 5)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (21, 'Li', 'Lee', 'lilee22@yahoo.com', 2053987511, 5)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (22, 'David', 'Capulo', 'davidc@gmail.com', 1234499345, 6)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (23, 'JJ', 'Dane', 'jjdane2@gmail.com', 5673240192, 8)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (24, 'Marissa', 'Jones', 'marissaj@msn.com', 2023991044, 10)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (25, 'Julia', 'Yun', 'jyun22@gmail.com', 2092284441, 2)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (26, 'Julian', 'Alen', 'julianalen@yahoo.com', 4439982348, 4)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (27, 'TJ', 'Sane', 'tjsane2@yahoo.com', 4322130098, 8)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (28, 'Miranda', 'Jones', 'mariandajones3@gmail.com', 1123099998, 9)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (29, 'Miles', 'Simpson', 'msimpson@gmail.com', 7223459011, 9)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (30, 'DeAndre', 'James', 'deandrejames@msn.com', 7503459937, 3)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (31, 'Lorenzo', 'Elliot', 'lorenzoe@yahoo.com', 5439901209, 2)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (32, 'Jalen', 'Pope', 'jalenpope@gmail.com', 3412229087, 5)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (33, 'Lauren', 'Rane', 'laurenr@yahoo.com', 7012389452, 5)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (34, 'Jae', 'Lee', 'jlee2@gmail.com', 3390025691, 6)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (35, 'Levon', 'Gerrard', 'lgerrard3@yahoo.com', 4569084422, 7)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (36, 'Mike', 'Jacks', 'mikejacks2@gmail.com', 1092238765, 4)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (37, 'Buddha', 'Leons', 'bleons@msn.com', NULL, 3)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (38, 'Tamir', 'Afinzi', 'tafinzi@yahoo.com', 4329995550, 6)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (39, 'Laurent', 'Ziman', 'lziman22@outlook.com', 8092228594, 5)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (40, 'Nicholas', 'Wings', 'nicholasw@yahoo.com', 5094492229, 8)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (41, 'Clint', 'Yun', 'clintyun2@yahoo.com', 2069994321, 8)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (42, 'Pharrel', 'Dinera', 'pdinera@msn.com', 9432874010, 9)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (43, 'Kole', 'Rone', 'koler@yahoo.com', 3432194593, 1)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (44, 'Sean', 'Dinnard', 'seand@gmail.com', 1123390087, 2)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (45, 'Trent', 'McQee', 'trentm@gmail.com', 4358209811, 10)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (46, 'Kai', 'Hunt', 'khunt2@msn.com', 3210034923, 10)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (47, 'Charles', 'Faith', 'cfaith3@outlook.com', 9082347658, 8)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (48, 'Stuart', 'Sentori', 'stuarts2@yahoo.com', NULL, 7)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (49, 'Ann', 'Zipea', 'annz@gmail.com', 2134095438, 9)

INSERT INTO Customer(CustomerID, FirstName, LastName, Email, Phone#, TerritoryID)
VALUES (50, 'Peter', 'Gire', 'pgire2@yahoo.com', 2349874535, 5)

/*Inserting Data into the Sales Table*/
INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (1, 2, 400, 09072015, 4432343212998747, 1, 1)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (2, 3, 600, 06082015, 2752601828799582, 1, 2)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (3, 2, 400, 09032015, 3727466969726475, 2, 3)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (4, 4, 800, 02062015, 5929935731837863, 5, 4)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (5, 1, 225, 05222015, 3322230381322434, 11, 5)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (6, 1, 200, 05252015, 5568430015186564, 2, 6)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (7, 2, 600, 09162015, 0935107646514126, 3, 7)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (8, 1, 215, 09122015, 9712198205020243, 15, 8)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (9, 3, 750, 11112015, 5639684963440067, 19, 9)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (10, 2, 450, 10142015, 1672839536306731, 13, 10)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (11, 2, 450, 05212015, 4121439534093809, 12, 11)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (12, 1, 225, 12222015, 0783598901952892, 12, 12)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (13, 1, 225, 12202015, 9566423332038769, 13, 13)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (14, 1, 225, 12152015, 7139510503700308, 11, 14)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (15, 1, 200, 1222015, 9821273623960237, 2, 15)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (16, 3, 600, 08072015, 6420275618934648, 1, 16)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (17, 5, 1000, 03032015, 1960728466131187, 1, 17)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (18, 2, 400, 02252015, 8982385436979255, 1, 18)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (19, 1, 200, 11152015, 0873657265305391, 1, 19)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (20, 1, 200, 09052015, 0837196115358879, 5, 20)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (21, 1, 180, 09072015, 3328002594168992, 6, 21)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (22, 2, 400, 09082015, 5389557513409301, 4, 22)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (23, 2, 430, 10112015, 8315227828942067, 15, 23)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (24, 2, 450, 10042015, 9983856057196995, 13, 24)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (25, 1, 225, 1015015, 9652414025175041, 12, 25)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (26, 1, 225, 12072015, 5359268857891023, 12, 26)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (27, 1, 225, 03222015, 4016852862173664, 12, 27)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (28, 1, 215, 03112015, 7318906172758728, 16, 28)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (29, 1, 250, 11152015, 0575965814604605, 20, 29)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (30, 2, 500, 11292015, 3677767456567989, 20, 30)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (31, 3, 675, 09192015, 5151863086539487, 12, 31)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (32, 3, 675, 09152015, 5551956171240830, 14, 32)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (33, 2, 450, 09022015, 9490902776771851, 13, 33)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (34, 2, 400, 10092015, 1119400923971304, 1, 34)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (35, 2, 400, 09052015, 6725520868161370, 1, 35)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (36, 1, 200, 03072015, 1290380326735312, 2, 36)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (37, 1, 200, 03062015, 6781248737007543, 5, 37)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (38, 1, 225, 03062015, 8866713183171008, 13, 38)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (39, 2, 450, 03052015, 4704393262129556, 13, 39)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (40, 2, 430, 02072015, 9580632242903106, 17, 40)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (41, 2, 500, 02072015, 5167275616759679, 20, 41)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (42, 3, 600, 02152015, 5286698428779116, 1, 42)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (43, 2, 400, 02092015, 6363631889146845, 2, 43)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (44, 1, 215, 02152015, 5031622832721373, 16, 44)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (45, 1, 180, 02072015, 6662544396326841, 6, 45)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (46, 1, 180, 02012015, 7217004507641115, 9, 46)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (47, 2, 360, 02152015, 2589844614762122, 10, 47)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (48, 2, 450, 01012015, 0968936094639647, 14, 48)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (49, 2, 450, 01022015, 8446806105272248, 13, 49)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (50, 2, 430, 01252015, 1589749751686998, 18, 50)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (51, 1, 200, 09072015, 4432343212998747, 1, 1)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (52, 1, 200, 06082015, 2752601828799582, 1, 2)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (53, 1, 200, 09032015, 3727466969726475, 2, 3)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (54, 1, 200, 02062015, 5929935731837863, 5, 4)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (55, 1, 225, 05222015, 3322230381322434, 11, 5)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (56, 1, 200, 05252015, 5568430015186564, 2, 6)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (57, 1, 200, 09162015, 0935107646514126, 3, 7)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (58, 1, 215, 09122015, 9712198205020243, 15, 8)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (59, 1, 250, 11112015, 5639684963440067, 19, 9)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (60, 1, 225, 10142015, 1672839536306731, 13, 10)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (61, 1, 225, 05212015, 4121439534093809, 12, 11)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (62, 1, 225, 12222015, 0783598901952892, 12, 12)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (63, 1, 225, 12202015, 9566423332038769, 13, 13)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (64, 1, 225, 12152015, 7139510503700308, 11, 14)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (65, 1, 200, 1222015, 9821273623960237, 2, 15)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (66, 1, 200, 08072015, 6420275618934648, 1, 16)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (67, 1, 200, 03032015, 1960728466131187, 1, 17)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (68, 1, 200, 02252015, 8982385436979255, 1, 18)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (69, 1, 200, 11152015, 0873657265305391, 1, 19)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (70, 2, 400, 09052015, 0837196115358879, 5, 20)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (71, 2, 360, 09072015, 3328002594168992, 6, 21)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (72, 2, 400, 09082015, 5389557513409301, 4, 22)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (73, 2, 430, 10112015, 8315227828942067, 15, 23)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (74, 2, 450, 10042015, 9983856057196995, 13, 24)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (75, 2, 450, 1015015, 9652414025175041, 12, 25)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (76, 2, 450, 12072015, 5359268857891023, 12, 26)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (77, 2, 450, 03222015, 4016852862173664, 12, 27)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (78, 2, 430, 03112015, 7318906172758728, 16, 28)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (79, 2, 500, 11152015, 0575965814604605, 20, 29)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (80, 2, 500, 11292015, 3677767456567989, 20, 30)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (81, 1, 225, 09192015, 5151863086539487, 12, 31)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (82, 1, 225, 09152015, 5551956171240830, 14, 32)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (83, 1, 225, 09022015, 9490902776771851, 13, 33)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (84, 1, 200, 10092015, 1119400923971304, 1, 34)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (85, 1, 200, 09052015, 6725520868161370, 1, 35)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (86, 1, 200, 03072015, 1290380326735312, 2, 36)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (87, 1, 200, 03062015, 6781248737007543, 5, 37)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (88, 1, 225, 03062015, 8866713183171008, 13, 38)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (89, 2, 450, 03052015, 4704393262129556, 13, 39)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (90, 2, 430, 02072015, 9580632242903106, 17, 40)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (91, 2, 500, 02072015, 5167275616759679, 20, 41)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (92, 2, 400, 02152015, 5286698428779116, 1, 42)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (93, 2, 400, 02092015, 6363631889146845, 2, 43)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (94, 2, 430, 02152015, 5031622832721373, 16, 44)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (95, 2, 360, 02072015, 6662544396326841, 6, 45)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (96, 3, 540, 02012015, 7217004507641115, 9, 46)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (97, 3, 540, 02152015, 2589844614762122, 10, 47)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (98, 3, 675, 01012015, 0968936094639647, 14, 48)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (99, 3, 675, 01022015, 8446806105272248, 13, 49)

INSERT INTO Sales(SalesOrderID, OrderQty, TotalPrice, OrderDate, CreditCard, ProductID, CustomerID)
VALUES (100, 3, 645, 01252015, 1589749751686998, 18, 50)

/*Inserting Data into the Territory Table*/
INSERT INTO Territory(TerritoryID, Address, City, State, Country)
VALUES (1, '55 George St.', 'Seattle', 'Washington', 'U.S.A.')

INSERT INTO Territory(TerritoryID, Address, City, State, Country)
VALUES (2, '22 Farm Ave.', 'Beaverton', 'Oregon', 'U.S.A.')

INSERT INTO Territory(TerritoryID, Address, City, State, Country)
VALUES (3, '2115 BBQ Ln.', 'Houston', 'Texas', 'U.S.A.')

INSERT INTO Territory(TerritoryID, Address, City, State, Country)
VALUES (4, '224 Curry Dr.', 'Oakland', 'California', 'U.S.A.')

INSERT INTO Territory(TerritoryID, Address, City, State, Country)
VALUES (5, '4290 Johnny Appleseed St.', 'Portland', 'Maine', 'U.S.A.')

INSERT INTO Territory(TerritoryID, Address, City, State, Country)
VALUES (6, '231 Forest St.', 'Wellesley', 'Massachusetts', 'U.S.A.')

INSERT INTO Territory(TerritoryID, Address, City, State, Country)
VALUES (7, '2090 Innovation Way', 'Chicago', 'Illionis', 'U.S.A.')

INSERT INTO Territory(TerritoryID, Address, City, State, Country)
VALUES (8, '32 Wall St.', 'New York', 'New York', 'U.S.A.')

INSERT INTO Territory(TerritoryID, Address, City, State, Country)
VALUES (9, '3030 Turner St.', 'Miami', 'Florida', 'U.S.A.')

INSERT INTO Territory(TerritoryID, Address, City, State, Country)
VALUES (10, '4020 SE 42rd St.', 'Atlanta', 'Georgia', 'U.S.A.')

