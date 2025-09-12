-- DDL command
CREATE TABLE BloodBankManager (
    M_ID INT,
    M_Name VARCHAR(100),
    M_Email VARCHAR(100),
    M_Contact VARCHAR(50),
    PRIMARY KEY (M_ID, M_Email, M_Contact)
);

-- DML commands
INSERT INTO BloodBankManager (M_ID, M_Name, M_Email, M_Contact)VALUES
(2, 'Anita Singh', 'anita.singh@mail.com', '9988776655');
SELECT * FROM BloodBankManager;

-- DDL command and TCL command
SAVEPOINT before_truncate;
TRUNCATE TABLE BloodBankManager;
SELECT * from BloodBankManager; 		
ALTER TABLE BloodBankManager MODIFY M_Contact BIGINT;

-- Inserting correct values
-- DML commands
INSERT INTO BloodBankManager (M_ID, M_Name, M_Email, M_Contact)VALUES
(1, 'Rajesh Kumar', 'rajesh.kumar@mail.com', '9876543210'),
(1, 'Rajesh Kumar', 'rajesh.kumar@mail.com', '9123456780'),
(1, 'Rajesh Kumar', 'rkumar@work.com', '9876543210'),
(1, 'Rajesh Kumar', 'rkumar@work.com', '9123456780'),
(2, 'Anita Singh', 'anita.singh@mail.com', '9988776655');
SELECT * FROM BloodBankManager;

-- TCL command
ROLLBACK TO before_truncate;
SELECT * from BloodBankManager; 		

COMMIT;

-- DCL 
GRANT SELECT, UPDATE, DELETE ON BloodBankManager TO 'RajeshKumar'@'localhost','AnitaSingh'@'localhost';
REVOKE DELETE ON BloodBankManager FROM 'AnitaSingh'@'localhost';
