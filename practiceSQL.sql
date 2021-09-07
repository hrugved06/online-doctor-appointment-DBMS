-- ---- Onlne Doctor Appointmnet System -------

create database 'Online Doctor Appointment Registration System'

-- -------------Table(1)---------------

create table Registration(
User_ID int NOT NULL,
FirstName varchar(10) NOT NULL,
LastName varchar(10) NOT NULL,
contact varchar(100) NOT NULL,
city varchar(221) NOT NULL,
email varchar(100) NOT NULL,
password int NOT NULL,
PRIMARY KEY (User_ID)
);

-- -----

select * from Registration

-- ---------------Table(2)--------------

create table Login(
User_ID int NOT NULL,
email varchar(100) NOT NULL,
password int NOT NULL,
PRIMARY KEY(User_ID)
);

-- ----

select * from Login

-- ------------Table(3)----------------

create table Agency(
User_ID int NOT NULL,
hospital_name varchar(30) NOT NULL,
patient_name varchar(20) NOT NULL,
aliment char NOT NULL,
description varchar(100),
PRIMARY KEY(User_ID)
);

-- ----

select * from Agency

-- ------------Table(4)--------------

create table Payment(
User_ID int NOT NULL,
patient_name varchar(30) NOT NULL,
payment_ID int NOT NULL,
amount int NOT NULL,
password int NOT NULL,
PRIMARY KEY(User_ID)
);

-- ----

select * from Payment

-- ---------------------------------------

-- ------------Insert Table(1)--------

INSERT INTO Registration values(11,'Hrugved', 'Kolhe',65468,'Shirdi','hrugved@hotmail.com',1234);
INSERT INTO Registration values(22,'Aarit', 'Rohamare',68368,'Nashik','aarit@hotmail.com',5678);
INSERT INTO Registration values(33,'Krishiv', 'Rohamare',46576,'Shirdi','krishiv@hotmail.com',91011);
INSERT INTO Registration values(44,'Anshul', 'Diwate',52943,'Shirdi','anshul@hotmail.com',1234);
INSERT INTO Registration values(55,'Anushka', 'Mehta',78211,'Nashik','anu@hotmail.com',5678);
INSERT INTO Registration values(66,'Mansi', 'Patil',15829,'A.Nagar','mansi@hotmail.com',36985);

select * from Registration


-- --------Insert Table(2)-------------

INSERT INTO Login values(11,'hrugved@hotmail.com',1234);
INSERT INTO Login values(22,'aarit@hotmail.com',5678);
INSERT INTO Login values(33,'krishiv@hotmail.com',91011);
INSERT INTO Login values(44,'anshul@hotmail.com',1234);
INSERT INTO Login values(55,'anu@hotmail.com',5678);
INSERT INTO Login values(66,'mansi@hotmail.com',36985);

select * from Login

-- -----------Insert Table(3)-------------

ALTER TABLE Agency DROP COLUMN aliment;

ALTER TABLE Agency ADD aliment varchar(20);

INSERT INTO Agency values(11,'abc Clinic' ,'Hrugved','Head Pain','Headache');
INSERT INTO Agency values(22,'xyz Clinic','Aarit','Stomach Pain','Stomachache');
INSERT INTO Agency values(33,'pqr Clinic','Krishiv','Back Pain','Backache');
INSERT INTO Agency values(44,'abc Clinic','Anshul','Stomach pain','Stomachache');
INSERT INTO Agency values(55,'lmn Clinic','Anushka','Things not visible clearly','Night Blindness');
INSERT INTO Agency values(66,'xyz Clinic','Mansi','Head Pain','Headache');

select * from Agency

-- ------------Insert Table(4)---------------

INSERT INTO Payment values(11,'Hrugved',999,500,1234);
INSERT INTO Payment values(22,'Aarit',888,800,5678);
INSERT INTO Payment values(33,'Krishiv',777,100,91011);
INSERT INTO Payment values(44,'Anshul',666,600,1234);
INSERT INTO Payment values(55,'Anushka',555,1000,5678);
INSERT INTO Payment values(66,'Mansi',444,200,36985);

-- ---------------------------------------------------

-- -----------Update Specific Value----------------

UPDATE Payment SET amount = '400' WHERE User_ID='66';

select * from Payment

-- ---------------------------------------------------

-- -------------creation of Stored Procedure ---------------

CREATE PROCEDURE reg
AS
select * from Registration
GO;

EXEC SelectAllCustomers;

-- -----------------------------------------------------