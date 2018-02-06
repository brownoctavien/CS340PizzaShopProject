------------- SQLite3 Dump File -------------

-- ------------------------------------------
-- Dump of "CreditCard"
-- ------------------------------------------

CREATE TABLE "CreditCard"(
	"CardNumber" Integer,
	"CardType" Text,
	"ExpirationDate" Integer,
	"NameOnCard" Text,
PRIMARY KEY ( "CardNumber", "CardType" ) );


INSERT INTO "CreditCard" ("CardNumber","CardType","ExpirationDate","NameOnCard") VALUES ( 4283424248,'Visa',218,'Matt Harrington' );
INSERT INTO "CreditCard" ("CardNumber","CardType","ExpirationDate","NameOnCard") VALUES ( 5284923424,'MasterCard',420,'Josh Lipps' );
INSERT INTO "CreditCard" ("CardNumber","CardType","ExpirationDate","NameOnCard") VALUES ( 6424294729,'American Express',518,'Octavien Brown' );
INSERT INTO "CreditCard" ("CardNumber","CardType","ExpirationDate","NameOnCard") VALUES ( 1673424242,'Discover',919,'Brooke Thornell' );
INSERT INTO "CreditCard" ("CardNumber","CardType","ExpirationDate","NameOnCard") VALUES ( 9870245392,'Visa',220,'Billie Joe Armstrong' );



-- ------------------------------------------
-- Dump of "Customer"
-- ------------------------------------------

CREATE TABLE "Customer"(
	"CustomerID" Integer PRIMARY KEY,
	"Name" Text,
	"Address" Text,
	"Phone" Text );


-- ------------------------------------------
-- Dump of "DebitCard"
-- ------------------------------------------

CREATE TABLE "DebitCard"(
	"CardNumber" Integer PRIMARY KEY,
	"NameOnCard" Text,
	"ExpirationDate" Integer,
	"PIN Number" Integer );


INSERT INTO "DebitCard" ("CardNumber","NameOnCard","ExpirationDate","PIN Number") VALUES ( 1455435432,'Matt Harrington',219,3993 );
INSERT INTO "DebitCard" ("CardNumber","NameOnCard","ExpirationDate","PIN Number") VALUES ( 5435535435,'Billie Joe Armstrong',320,7753 );
INSERT INTO "DebitCard" ("CardNumber","NameOnCard","ExpirationDate","PIN Number") VALUES ( 7853424424,'Josh Lipps',620,4234 );
INSERT INTO "DebitCard" ("CardNumber","NameOnCard","ExpirationDate","PIN Number") VALUES ( 8590385093,'Brooke Thornell',1018,2525 );
INSERT INTO "DebitCard" ("CardNumber","NameOnCard","ExpirationDate","PIN Number") VALUES ( 8928490289,'Octavien Brown',818,5525 );



-- ------------------------------------------
-- Dump of "Delivery"
-- ------------------------------------------

CREATE TABLE "Delivery"(
	"OrderID" Integer,
	"TypeID" Integer,
	"BoxAmount" Integer,
	"Miles" Double );


-- ------------------------------------------
-- Dump of "InHouse"
-- ------------------------------------------

CREATE TABLE "InHouse"(
	"OrderID" Integer,
	"TypeID" Integer );


-- ------------------------------------------
-- Dump of "OrderInfo"
-- ------------------------------------------

CREATE TABLE "OrderInfo"(
	"OrderID" Integer PRIMARY KEY,
	"TypeID" Integer,
	"CustomerID" Integer,
	"MenuID" Integer,
	"PaymentAmount" Integer,
	"PaymentType" Integer,
	CONSTRAINT "lnk_TakeOut_OrderInfo" FOREIGN KEY ( "OrderID", "TypeID" ) REFERENCES "TakeOut"( "OrderID", "TypeID" )
,
	CONSTRAINT "lnk_Delivery_OrderInfo" FOREIGN KEY ( "OrderID", "TypeID" ) REFERENCES "Delivery"( "OrderID", "TypeID" )
,
	CONSTRAINT "lnk_InHouse_OrderInfo" FOREIGN KEY ( "OrderID", "TypeID" ) REFERENCES "InHouse"( "OrderID", "TypeID" )
 );


-- ------------------------------------------
-- Dump of "PizzaMenu"
-- ------------------------------------------

CREATE TABLE "PizzaMenu"(
	"MenuID" Integer PRIMARY KEY,
	"Topping" Text,
	"Size" Text,
	"Price" Double );


INSERT INTO "PizzaMenu" ("MenuID","Topping","Size","Price") VALUES ( 12009,'Pepperoni','Large',10.5 );
INSERT INTO "PizzaMenu" ("MenuID","Topping","Size","Price") VALUES ( 13131,'Pepperoni','Medium',8 );
INSERT INTO "PizzaMenu" ("MenuID","Topping","Size","Price") VALUES ( 14144,'Cheese','Large',9 );
INSERT INTO "PizzaMenu" ("MenuID","Topping","Size","Price") VALUES ( 24242,'Pepperoni','Small',8.5 );
INSERT INTO "PizzaMenu" ("MenuID","Topping","Size","Price") VALUES ( 34342,'Meat','Large',12 );
INSERT INTO "PizzaMenu" ("MenuID","Topping","Size","Price") VALUES ( 44245,'Meat','Small',9 );
INSERT INTO "PizzaMenu" ("MenuID","Topping","Size","Price") VALUES ( 64646,'Meat','Medium',9.5 );
INSERT INTO "PizzaMenu" ("MenuID","Topping","Size","Price") VALUES ( 78979,'Cheese','Small',6 );
INSERT INTO "PizzaMenu" ("MenuID","Topping","Size","Price") VALUES ( 99999,'Cheese','Medium',7 );



-- ------------------------------------------
-- Dump of "TakeOut"
-- ------------------------------------------

CREATE TABLE "TakeOut"(
	"OrderID" Integer,
	"TypeID" Integer,
	"Box" Integer );


-- ------------------------------------------
-- Dump of "User"
-- ------------------------------------------

CREATE TABLE "User"(
	"Username" Text PRIMARY KEY,
	"Password" Text );


INSERT INTO "User" ("Username","Password") VALUES ( 'roushfen','11234' );
INSERT INTO "User" ("Username","Password") VALUES ( 'mharr','1234' );
INSERT INTO "User" ("Username","Password") VALUES ( 'boss','h8ter' );
INSERT INTO "User" ("Username","Password") VALUES ( 'cashier','pizza' );
INSERT INTO "User" ("Username","Password") VALUES ( 'cook','shop' );



