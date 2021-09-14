CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

-- ----------Insert 2-------------

INSERT INTO Persons VALUES ('111','House','Man','Shardanagar','Shirdi');
INSERT INTO Persons VALUES ('222','Sharma','Apple','Shardanagar','Shirdi');
INSERT INTO Persons VALUES ('333','Apple','Zebra','Shardanagar','Shirdi');
INSERT INTO Persons VALUES ('444','Ball','Cate','Shardanagar','Shirdi');
INSERT INTO Persons VALUES ('555','CAt','MAn','Shardanagar','Shirdi');
INSERT INTO Persons VALUES ('666','Dog','Human','Shardanagar','Shirdi');

-- ---------------------------------

CREATE TABLE Data (
    PersonID int,
    phone bigint,
    interest varchar(255),
    City varchar(255)
);

-- -----------Insert 2--------------

INSERT INTO Data VALUES ('111','78955','ball','Shirdi');
INSERT INTO Data VALUES ('222','2752525','mall','Shirdi');
INSERT INTO Data VALUES ('333','5275','call','Shirdi');
INSERT INTO Data VALUES ('444','52752574','fall','Shirdi');
INSERT INTO Data VALUES ('555','527242','angle','Shirdi');
INSERT INTO Data VALUES ('666','252744','crud','Shirdi');

-- ---------------Inner Join---------------------

select Persons.FirstName, Data.interest from Persons INNER JOIN Data ON Persons.PersonID = Data.PersonID 

-- ---------------Left join---------------------

select Persons.FirstName, Data.interest from Persons LEFT JOIN Data ON Persons.PersonID = Data.PersonID