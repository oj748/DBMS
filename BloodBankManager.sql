CREATE TABLE BloodBankManager (
    M_ID INT PRIMARY KEY,
    M_Name VARCHAR(100),
    M_Email VARCHAR(100),
    M_Phone VARCHAR(50)
);

INSERT INTO BloodBankManager (M_ID, M_Name, M_Email, M_Contact)
VALUES
(1, 'Rajesh Kumar', 'rajesh.kumar@mail.com, rkumar@work.com', '9876543210, 9123456780'),
(2, 'Anita Singh', 'singh.ani@mail.com', '9988776655');


-- DDL command 
ALTER TABLE BloodBankManager
RENAME COLUMN M_Phone TO M_Contact; -- Renaming Column of table

-- DML commands
SELECT * FROM BloodBankManager ; -- displaying the entire table data

UPDATE BloodBankManager				-- Modifying data in the table
SET M_Email = 'anita.singh@mail.com' 
WHERE M_ID = 2;

SELECT * FROM BloodBankManager ;

-- DCL Command

REVOKE INSERT ON BloodBankManager 
FROM 'RobertTaylor'@'localhost','LauraMartinez'@'localhost';

SAVEPOINT before_update; -- Creating a savepoint 

UPDATE BloodBankManager 
SET M_Name = 'Dr. Sharma' 
WHERE M_ID = 1;

SELECT * FROM BloodBankManager ;

ROLLBACK TO before_update;  -- Undoing the Update Operation on M_ID = 1

SELECT * FROM BloodBankManager ;

-- TCL command
COMMIT; -- Saving all the transactions 
