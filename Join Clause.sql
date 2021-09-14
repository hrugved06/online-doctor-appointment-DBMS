
-- ------------- Inner Join -----------------

SELECT Registration.FirstName, Payment.amount
FROM Registration
INNER JOIN Payment ON Registration.User_ID = Payment.User_ID;

-- --------------- Left Join -----------------

SELECT Agency.hospital_name, Payment.amount
FROM Agency
LEFT JOIN Payment
ON Agency.User_ID=Payment.User_ID;

-- --------------- Right Join ----------------

SELECT Login.email, Registration.FirstName, Registration.LastName
FROM Login
RIGHT JOIN Registration ON Registration.User_ID = Login.User_ID;

-- --------------- Full Join ------------------

SELECT Agency.hospital_name, Registration.city
FROM Agency
FULL OUTER JOIN Registration ON Agency.patient_name=Registration.FirstName

-- ------------- Natural Join ----------------

SELECT *
FROM Registration
NATURAL JOIN Payment;

-- --------------------------------------------