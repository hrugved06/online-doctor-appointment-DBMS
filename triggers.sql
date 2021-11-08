-- -------------------------------

select * from Agency

-- -------------------------------

CREATE TABLE male_agency (
    newid int,
    patient_name varchar(255),
    aliment varchar(20),
    age int
);
select * from male_agency

-- --------------------------------

CREATE TABLE female_agency (
    newid int,
    patient_name varchar(255),
    aliment varchar(20),
    age int
);
select * from female_agency


-- ------------------------------

CREATE OR REPLACE FUNCTION gendermale()
RETURNS TRIGGER
LANGUAGE PLPGSQL
AS
$$
BEGIN  
	IF (NEW.gender = 'M')
		THEN
		INSERT INTO male_agency ( newid, patient_name, aliment, age ) VALUES ( NEW.User_ID, NEW.patient_name, NEW.aliment, NEW.age);
	END IF;
	RETURN NEW;
END;
$$

-- -------------------------------

CREATE OR REPLACE FUNCTION genderfemale()
RETURNS TRIGGER
LANGUAGE PLPGSQL
AS
$$
BEGIN  
	IF (NEW.gender = 'F')
		THEN
		INSERT INTO female_agency ( newid, patient_name, aliment, age ) VALUES ( NEW.User_ID, NEW.patient_name, NEW.aliment, NEW.age);
	END IF;
	RETURN NEW;
END;
$$

-- -------------------------------

-- ----------------------------- TRIGGER 1 (Male) -------------------------------

CREATE TRIGGER gendermale
    AFTER INSERT
    ON Agency FOR EACH ROW
    EXECUTE PROCEDURE gendermale();

-- ----------------------------------------------------------------------------

-- ----------------------------- TRIGGER 2 (Female) -------------------------------

CREATE TRIGGER genderfemale
    AFTER INSERT
    ON Agency FOR EACH ROW
    EXECUTE PROCEDURE genderfemale();

-- ------------------------------------------------------------------------------------

INSERT INTO Agency (User_ID, hospital_name, patient_name, description, aliment, age, gender) 
 VALUES(22,'xyz Clinic','Unnati','Stomach Pain','Stomachache',17,'F'),
       (33,'pqr Clinic','Krishiv','Back Pain','Backache',20,'M'),
       (44,'abc Clinic','Anushka','Stomach Pain','Stomachache',19,'F'),
       (55,'lmn Clinic','Anshul','Visibility','Night Blindness',21,'M'),
       (66,'xyz Clinic','Mansi','Head Pain','Headache',19,'F');
SELECT * FROM Agency;

-- -------------------------------------------

select * from male_agency

-- ------------------------------------------

select * from female_agency

-- ------------------------------------------