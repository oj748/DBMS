-- DDL (Data Definition Language)
CREATE TABLE RecordingStaff (
    Emp_ID INT,
    Emp_Name VARCHAR(100),
    Emp_Email VARCHAR(100),
    E_Contact VARCHAR(50),
    MGR INT, 
    PRIMARY KEY (Emp_ID, Emp_Email, E_Contact),
    FOREIGN KEY (MGR) REFERENCES BloodBankManager(M_ID)
);

-- DML COMMANDS 
INSERT INTO RecordingStaff (Emp_ID, Emp_Name, Emp_Email, E_Contact, MGR) VALUES
(1, 'John Smith', 'john.smith@email.com', '9876543210', 1),
(1, 'John Smith', 'john.smith@email.com', '9123456780', 1),
(1, 'John Smith', 'j.smith@work.com', '9876543210', 1),
(1, 'John Smith', 'j.smith@work.com', '9123456780', 1),
(2, 'Emily Johnson', 'emily.j@gmail.com', '9988776655', 2),
(2, 'Emily Johnson', 'emily.johnson@work.com', '9988776655', 2),
(3, 'Michael Brown', 'mikeb@yahoo.com', '8899776655', 1),
(3, 'Michael Brown', 'mikeb@yahoo.com', '7766554433', 1),
(3, 'Michael Brown', 'mbrown@company.com', '8899776655', 1),
(3, 'Michael Brown', 'mbrown@company.com', '7766554433', 1),
(4, 'Sarah Davis', 'sarahd@hospital.com', '9988001122', 2),
(4, 'Sarah Davis', 's.davis@gmail.com', '9988001122', 2),
(5, 'David Wilson', 'davidwilson@gmail.com', '9112233445', 1),
(5, 'David Wilson', 'davidwilson@gmail.com', '9776655443', 1),
(5, 'David Wilson', 'danwilson@gmail.com', '9112233445', 1),
(5, 'David Wilson', 'danwilson@gmail.com', '9776655443', 1),
(6, 'Laura Martinez', 'laura.martinez@gmail.com', '9988771122', 2),
(6, 'Laura Martinez', 'lmartinez@work.com', '9988771122', 2),
(7, 'Robert Taylor', 'roberttaylor@yahoo.com', '9123456677', 1),
(7, 'Robert Taylor', 'r.taylor@work.com', '9123456677', 1);
SELECT * FROM RecordingStaff LIMIT 9999;

-- DDL commands
ALTER TABLE RecordingStaff ADD Joining_Date DATE; 
SELECT * FROM RecordingStaff LIMIT 9999;
ALTER TABLE RecordingStaff DROP COLUMN Joining_Date;
SELECT * FROM RecordingStaff LIMIT 9999;

-- DML command
UPDATE RecordingStaff SET E_Contact = '9000000000' WHERE Emp_ID = 2 AND Emp_Email = 'emily.j@gmail.com';
SELECT * FROM RecordingStaff LIMIT 9999;

-- Delete example: remove one duplicate of John
DELETE FROM RecordingStaff WHERE Emp_ID = 1 AND Emp_Email = 'j.smith@work.com' AND E_Contact = '9123456780';

-- TCL command
START TRANSACTION;
UPDATE RecordingStaff SET MGR = 2 WHERE Emp_ID = 7;
SAVEPOINT Save_After_Update;
SELECT * FROM RecordingStaff LIMIT 9999;
-- Delete Sarah’s Gmail row
DELETE FROM RecordingStaff WHERE Emp_ID = 4 AND Emp_Email = 's.davis@gmail.com';

-- Rollback to savepoint (undo Sarah’s delete, keep manager update)
ROLLBACK TO Save_After_Update;
SELECT * FROM RecordingStaff LIMIT 9999;
COMMIT;

-- TCL 
GRANT SELECT, UPDATE, DELETE ON RecordingStaff TO 'RajeshKumar'@'localhost','AnitaSingh'@'localhost';
