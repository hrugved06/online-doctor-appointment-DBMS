-- ------------------ 1 ---------------------

SELECT a.User_ID, a.FirstName, b.payment_id, b.amount
FROM Registration a, Payment b
WHERE a.User_ID = b.User_ID AND amount IN (SELECT MAX (amount) FROM Payment);


-- -------------------- 2 -------------------

SELECT a.User_ID, a.FirstName, b.payment_id, b.amount
FROM Registration a, Payment b
WHERE a.User_ID = b.User_ID AND amount IN (SELECT MIN(amount) FROM Payment);

-- ------------------- 3 ---------------------

SELECT  a.FirstName, a.city, b.hospital_name , b.aliment, b.Age
FROM Registration a, Agency b
WHERE a.User_ID = b.User_ID AND b.Age IN (SELECT b.Age FROM Agency  
WHERE b.Age <= 19);  

-- ------------------ 4 ---------------------

SELECT  a.FirstName, a.city, b.hospital_name , b.aliment, b.Age
FROM Registration a, Agency b
WHERE a.User_ID = b.User_ID AND a.city IN (SELECT a.city FROM Registration  
WHERE a.city = 'Nashik');  