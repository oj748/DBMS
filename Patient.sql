CREATE TABLE IF NOT EXISTS Patient (
    P_ID INT PRIMARY KEY,
    P_Name VARCHAR(100),
    P_Email VARCHAR(100) UNIQUE,
    P_Contact VARCHAR(100),
    P_Gender CHAR(1),
    P_DOB DATE,
    P_Age INT,
    P_Bld_Grp VARCHAR(5),
    P_Address VARCHAR(200),
    Req_Quant INT,
    H_ID INT,
    FOREIGN KEY (H_ID) REFERENCES Hospital(H_ID)
);

-- DROP TABLE Patient;

INSERT INTO Patient (P_ID, P_Name, P_Email, P_Contact, P_Gender, P_DOB, P_Age, P_Bld_Grp, P_Address, Req_Quant, H_ID)
VALUES
(1, 'John Smith', 'john.smith23@mail.com, j.smith@work.com', '9876543210, 9123456780', 'M', '1985-05-12', 38, 'A+', '123 Main Street, Mumbai', 2, 1),
(2, 'Emily Johnson', 'emily.j446@mail.com', '9988776655', 'F', '1990-07-23', 33, 'B+', '45 Park Avenue, Delhi', 1, 2),
(3, 'Michael Brown', 'michael.b46@mail.com, mikeb46@company.com', '8899776655, 7766554433', 'M', '1982-03-14', 41, 'O+', '78 Elm Road, Pune', 3, 3),
(4, 'Sarah Davis', 'sarah.d64@mail.com', '9988001122, s.davis64@gmail.com', 'F', '1995-12-30', 28, 'AB+', '9 Beach Street, Chennai', 1, 1),
(5, 'David Wilson', 'david.wilson46@mail.com, danwilson34@gmail.com', '9112233445', 'M', '1988-09-02', 35, 'B-', '56 Lake Road, Bangalore', 2, 2),
(6, 'Laura Martinez', 'laura.martinez33@mail.com, lmartinez33@work.com', '9988771122, 9900887766', 'F', '1992-11-11', 31, 'A-', '12 Hill Street, Jaipur', 1, 3),
(7, 'Robert Taylor', 'robert.taylor10@mail.com', '9123456677', 'M', '1980-02-19', 43, 'O-', '33 Maple Avenue, Kolkata', 4, 1),
(8, 'Sophia Anderson', 'sophia.anderson13@mail.com, s.anderson13@company.com', '9988223344', 'F', '1987-08-25', 36, 'AB-', '21 Cedar Road, Lucknow', 1, 2),
(9, 'James Thomas', 'james.thomas13@mail.com, jthomas13@company.com', '9090909090', 'M', '1991-04-16', 32, 'A+', '44 Pine Street, Ahmedabad', 3, 3),
(10, 'Olivia Garcia', 'olivia.garcia13@mail.com, o.garcia13@work.com', '9988776655, 9111222333', 'F', '1989-06-03', 34, 'B+', '11 River Road, Surat', 2, 1),
(11, 'Liam White', 'liam.white13@mail.com, lwhite13@company.com', '9876541230', 'M', '1983-10-22', 40, 'O+', '7 Sun Street, Indore', 1, 2),
(12, 'Mia Harris', 'mia.harris13@mail.com, m.harris13@work.com', '9988773344', 'F', '1994-09-18', 29, 'AB+', '89 Maple Lane, Bhopal', 3, 3),
(13, 'Noah Martin', 'noah.martin31@mail.com, nmartin31@company.com', '9123458899', 'M', '1986-01-09', 37, 'A-', '23 Evergreen Street, Nagpur', 2, 1),
(14, 'Ava Thompson', 'ava.thompson31@mail.com, athompson31@gmail.com', '9988003344', 'F', '1993-07-05', 30, 'B-', '56 Sky Avenue, Pune', 1, 2),
(15, 'Ethan Lee', 'ethan.lee32@mail.com, e.lee32@company.com', '9112233445', 'M', '1985-11-12', 38, 'O-', '12 Gate Road, Mumbai', 2, 3);
SELECT * FROM Patient;


-- DDL Command

ALTER TABLE Patient MODIFY P_Age SMALLINT;

-- DML Commands

DELETE FROM Patient WHERE P_ID = 4;

SELECT * FROM Patient;

-- DCL Commands

GRANT UPDATE,DELETE ON Patient TO 'RobertTaylor'@'localhost','LauraMartinez'@'localhost';

-- TCL Commands
COMMIT;
