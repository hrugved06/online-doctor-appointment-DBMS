-- ---------------Practical 5------------------

SELECT * FROM Registration

SELECT * FROM Login

SELECT * FROM Agency

SELECT * FROM Payment

-- --------------------------------------------

SELECT User_ID,FirstName,LastName,contact,city,email,password FROM Registration 
WHERE city='Shirdi';

SELECT User_ID,FirstName,LastName,contact,city,email,password FROM Registration 
WHERE city = 'Nashik';

-- -------------------------------------------

SELECT count(*) FROM Payment;

SELECT MIN(amount)AS SmallestPrice
FROM Payment;

SELECT MAX(amount)AS LargestPrice
FROM Payment;

SELECT AVG(amount) FROM Payment;

SELECT SUM(amount) FROM Payment;
-- -------------------------------------------

SELECT * from Agency
where hospital_name= 'abc Clinic' and aliment = 'Headache';

SELECT * FROM Agency WHERE aliment = 'Stomachache' OR hospital_name='xyz Clinic';

-- -------------------------------------------

