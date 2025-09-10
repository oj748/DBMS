CREATE TABLE ScreeningTest (
    Test_ID INT PRIMARY KEY,
    D_ID INT,
    BP VARCHAR(20),
    Weight DECIMAL(5,2),
    Platelet VARCHAR(100),
    Hemoglobin DECIMAL(5,2),
    Hematocrit DECIMAL(5,2),
    Blood_Grp VARCHAR(5),
    Eligible BOOLEAN,
    FOREIGN KEY (D_ID) REFERENCES Donor(D_ID)
);
INSERT INTO ScreeningTest (Test_ID, D_ID, BP, Weight, Platelet, Hemoglobin, Hematocrit, Blood_Grp, Eligible) VALUES
(1, 1, '120/80', 70.50, '250000', 14.5, 42.0, 'A+', TRUE),
(2, 2,'118/79', 65.20, '240000', 13.8, 40.5, 'B+', TRUE),
(3, 3, '122/81', 80.00, '270000', 15.2, 43.0, 'O+', TRUE),
(4, 4, '115/75', 55.50, '230000', 12.9, 38.0, 'AB+', TRUE),
(5, 5, '125/85', 72.30, '260000', 14.8, 41.5, 'A-', TRUE),
(6, 6, '119/78', 68.00, '245000', 13.7, 40.0, 'B-', TRUE),
(7, 7, '121/80', 75.20, '280000', 15.5, 44.0, 'O-', TRUE),
(8, 8, '117/76', 62.50, '235000', 13.2, 39.0, 'AB-', TRUE),
(9, 9, '123/82', 78.00, '270000', 14.9, 42.5, 'A+', TRUE),
(10, 10, '120/79', 69.50, '250000', 14.1, 41.0, 'B+', TRUE),
(11, 9, '123/82', 78.00, '200000', 14.9, 42.5, 'A+', FALSE);
SELECT * FROM ScreeningTest;

-- DDL Commands 
ALTER TABLE ScreeningTest MODIFY Platelet BIGINT;

-- DML Commands
SELECT * FROM ScreeningTest;
DELETE FROM ScreeningTest WHERE Test_ID = 11;
SELECT * FROM ScreeningTest;


-- DCL Commands

GRANT UPDATE,DELETE ON ScreeningTest TO 'LauraMartinez'@'localhost','RobertTaylor'@'localhost';

-- TCL Commands

SAVEPOINT before_delete; 			-- Creating savepoint 
DELETE FROM ScreeningTest WHERE D_ID BETWEEN 2 AND 5; -- Deleting records
SELECT * from ScreeningTest;

ROLLBACK TO before_delete;			-- Rollback to previously created savepoint
SELECT * from ScreeningTest; 		

COMMIT;




