-- ------- Online Doctor Appointment Registration System ------------
-- ---------------------- Hrugved kolhe ------------------------


SELECT * form Registration

select * from Registration
INSERT INTO Registration 
values(77,'Sam', 'Cook',45151,'England','sam@hotmail.com',56789);
COMMIT;

----------------------------------------------------------------------------------------------------------------

INSERT INTO Registration 
values(88,'Adam', 'Milne',71524,'Warsaw','adam@hotmail.com',45678);
ROLLBACK;
select * from Registration;

-----------------------------------------------------------------------------------------------------------------

Begin;
INSERT into Registration VALUES (88,'Adam','Milne',45678, 'London', 'adam@hotmail.com', 45828);
SAVEPOINT save_a;
INSERT into Registration VALUES (99,'Joe','Mark',85528, 'Warsaw', 'joe@hotmail.com', 45857);
SAVEPOINT save_b;
INSERT into Registration VALUES (10,'Mat','Watson',255578, 'Lichter', 'mat@hotmail.com', 95342);
ROLLBACK to SAVEPOINT save_a;

Select * from Registration

-----------------------------------------------------------------------------------------------------------------

CREATE VIEW Registration_1 AS
SELECT  User_ID, FirstName, LastName
FROM Registration
WHERE User_ID=55;
SELECT * from Registration_1 ;

------------------------------------------------------------------------------------------------------------------