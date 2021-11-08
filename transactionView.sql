-- ------- Online Doctor Appointment Registration System ------------
-- ---------------------- Hrugved kolhe ------------------------


-- ------------------------------------------ Table 1 --------------------------------------------------


SELECT * FROM Registration;

-- --------------------------------------------------------------------------------------------

CREATE VIEW REG_VIEW AS 
SELECT User_ID,FirstName ,email
FROM  Registration;
select * from REG_VIEW;

-- --------------------------------------------------------------------------------------------

UPDATE REG_VIEW
SET email = 'sam77@hotmail.com'
WHERE FirstName = 'Sam';
SELECT * FROM REG_VIEW;

-- --------------------------------------------------------------------------------------------

DELETE FROM REG_VIEW
WHERE email = 'sam77@hotmail.com';
select * from REG_VIEW

-- --------------------------------------------------------------------------------------------

DROP VIEW REG_VIEW;
SELECT*FROM REG_VIEW;
SELECT*FROM Registration;

-- --------------------------------------------------------------------------------------------

-- ------------------------------------- Table 2 ----------------------------------------------

SELECT * FROM Payment;

-- --------------------------------------------------------------------------------------------

CREATE VIEW PAY_VIEW AS 
SELECT User_ID,patient_name,amount
FROM  Payment;
SELECT * FROM PAY_VIEW;

-- --------------------------------------------------------------------------------------------

UPDATE PAY_VIEW
SET amount = 600
WHERE User_ID = 33;
SELECT * FROM PAY_VIEW;

-- --------------------------------------------------------------------------------------------

INSERT INTO Payment values(77,'Sam',999,500,1234);
DELETE FROM PAY_VIEW
WHERE patient_name = 'Sam';
SELECT*FROM PAY_VIEW;

-- --------------------------------------------------------------------------------------------

DROP VIEW PAY_VIEW;
SELECT*FROM PAY_VIEW;
SELECT*FROM Payment;

-- --------------------------------------------------------------------------------------------
