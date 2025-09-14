-- DDL commands
CREATE TABLE Patient (
    P_ID INT,
    P_Name VARCHAR(100),
    P_Email VARCHAR(100),
    P_Contact VARCHAR(100),
    P_Gender CHAR(1),
    P_DOB DATE,
    P_Age INT,
    P_Bld_Grp VARCHAR(5),
    P_Address VARCHAR(200),
    Req_Quant INT,
    H_ID INT,
    H_Email VARCHAR(100),
    H_Contact VARCHAR(100),
    PRIMARY KEY (P_ID, P_Email, P_Contact),
    FOREIGN KEY (H_ID, H_Email, H_Contact) 
	REFERENCES Hospital(H_ID, H_Email, H_Contact)
);

-- DML commands 
INSERT INTO Patient 
(P_ID, P_Name, P_Email, P_Contact, P_Gender, P_DOB, P_Age, P_Bld_Grp, P_Address, Req_Quant, H_ID) VALUES
(1, 'John Smith', 'john.smith23@mail.com', '9876543210', 'M', '1985-05-12', 38, 'A+', '123 Main Street, Mumbai', 2, 1),
(2, 'Emily Johnson', 'emily.j446@mail.com', '9988776655', 'F', '1990-07-23', 33, 'B+', '45 Park Avenue, Delhi', 1, 2),
(3, 'Michael Brown', 'michael.b46@mail.com', '8899776655', 'M', '1982-03-14', 41, 'O+', '78 Elm Road, Pune', 3, 3);
SELECT * FROM Patient LIMIT 99;

-- DDL/DML (truncate + re-insert clean data)
TRUNCATE TABLE Patient;
INSERT INTO Patient 
(P_ID, P_Name, P_Email, P_Contact, P_Gender, P_DOB, P_Age, P_Bld_Grp, P_Address, Req_Quant, H_ID) VALUES
(1, 'John Smith', 'john.smith23@mail.com', '9876543210', 'M', '1985-05-12', 38, 'A+', '123 Main Street, Mumbai', 2, 1),
(2, 'Emily Johnson', 'emily.j446@mail.com', '9988776655', 'F', '1990-07-23', 33, 'B+', '45 Park Avenue, Delhi', 1, 2),
(3, 'Michael Brown', 'michael.b46@mail.com', '8899776655', 'M', '1982-03-14', 41, 'O+', '78 Elm Road, Pune', 3, 3),
(4, 'Sarah Davis', 'sarah.d64@mail.com', '9988001122', 'F', '1995-12-30', 28, 'AB+', '9 Beach Street, Chennai', 1, 1),
(5, 'David Wilson', 'david.wilson46@mail.com', '9112233445', 'M', '1988-09-02', 35, 'B-', '56 Lake Road, Bangalore', 2, 2),
(6, 'Laura Martinez', 'laura.martinez33@mail.com', '9988771122', 'F', '1992-11-11', 31, 'A-', '12 Hill Street, Jaipur', 1, 3),
(7, 'Robert Taylor', 'robert.taylor10@mail.com', '9123456677', 'M', '1980-02-19', 43, 'O-', '33 Maple Avenue, Kolkata', 4, 1),
(8, 'Sophia Anderson', 'sophia.anderson13@mail.com', '9988223344', 'F', '1987-08-25', 36, 'AB-', '21 Cedar Road, Lucknow', 1, 2),
(9, 'James Thomas', 'james.thomas13@mail.com', '9090909090', 'M', '1991-04-16', 32, 'A+', '44 Pine Street, Ahmedabad', 3, 3),
(10, 'Olivia Garcia', 'olivia.garcia13@mail.com', '9988776655', 'F', '1989-06-03', 34, 'B+', '11 River Road, Surat', 2, 1);
SELECT * FROM Patient LIMIT 99;

-- DML commands (update + delete)
UPDATE Patient SET Req_Quant = 5 WHERE P_ID = 7;
DELETE FROM Patient WHERE P_ID = 2;
SELECT * FROM Patient LIMIT 99;

-- DDL command (alter table)
ALTER TABLE Patient ADD COLUMN Critical BOOLEAN DEFAULT FALSE;
UPDATE Patient SET Critical = TRUE WHERE Req_Quant >= 3;
SELECT * FROM Patient LIMIT 99;

-- TCL commands
SAVEPOINT sp1;
UPDATE Patient SET Req_Quant = 4 WHERE P_ID = 1;
SELECT * FROM Patient;
ROLLBACK TO sp1;
SELECT * FROM Patient;
COMMIT;

-- TCL
GRANT SELECT, UPDATE, DELETE ON Patient TO 'RajeshKumar'@'localhost','AnitaSingh'@'localhost';
