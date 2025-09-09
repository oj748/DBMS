CREATE TABLE IF NOT EXISTS Donor_1NF (
    D_ID INT,
    D_Name VARCHAR(100) NOT NULL,
    D_Email VARCHAR(100),
    D_Gender CHAR(1),
    D_DOB DATE,
    D_Age INT NOT NULL CHECK(D_Age > 18),
    D_Address VARCHAR(200),
    D_Contact VARCHAR(100),
    D_Reg_Date DATE,
    PRIMARY KEY (D_ID, D_Email, D_Contact) 
);

INSERT INTO Donor_1NF (D_ID, D_Name, D_Email, D_Gender, D_DOB, D_Age, D_Address, D_Contact, D_Reg_Date) VALUES
(1, 'John Doe', 'john.doe@gmail.com', 'M', '1990-01-15', 33, '123 Elm Street, NY', '9876543210', '2025-01-01'),
(1, 'John Doe', 'john.doe@gmail.com', 'M', '1990-01-15', 33, '123 Elm Street, NY', '9123456780', '2025-01-01'),
(1, 'John Doe', 'j.doe@work.com', 'M', '1990-01-15', 33, '123 Elm Street, NY', '9876543210', '2025-01-01'),
(1, 'John Doe', 'j.doe@work.com', 'M', '1990-01-15', 33, '123 Elm Street, NY', '9123456780', '2025-01-01'),
(2, 'Emily Clark', 'emily.clark@gmail.com', 'F', '1988-05-22', 35, '45 Oak Lane, NY', '9988776655', '2025-01-02'),
(2, 'Emily Clark', 'eclark@company.com', 'F', '1988-05-22', 35, '45 Oak Lane, NY', '9988776655', '2025-01-02'),
(3, 'Michael Smith', 'michael.smith@gmail.com', 'M', '1992-03-12', 31, '78 Pine Street, LA', '8899776655', '2025-01-03'),
(3, 'Michael Smith', 'michael.smith@gmail.com', 'M', '1992-03-12', 31, '78 Pine Street, LA', '7766554433', '2025-01-03'),
(3, 'Michael Smith', 'msmith@work.com', 'M', '1992-03-12', 31, '78 Pine Street, LA', '8899776655', '2025-01-03'),
(3, 'Michael Smith', 'msmith@work.com', 'M', '1992-03-12', 31, '78 Pine Street, LA', '7766554433', '2025-01-03'),
(4, 'Sarah Johnson', 'sarah.johnson@gmail.com', 'F', '1995-07-08', 28, '56 Maple Avenue, LA', '9988001122', '2025-01-04'),
(4, 'Sarah Johnson', 'sjohnson@work.com', 'F', '1995-07-08', 28, '56 Maple Avenue, LA', '9988001122', '2025-01-04'),
(5, 'David Wilson', 'david.wilson@gmail.com', 'M', '1985-12-30', 38, '90 Cedar Road, SF', '9112233445', '2025-01-05'),
(5, 'David Wilson', 'david.wilson@gmail.com', 'M', '1985-12-30', 38, '90 Cedar Road, SF', '9776655443', '2025-01-05'),
(5, 'David Wilson', 'dwilson@company.com', 'M', '1985-12-30', 38, '90 Cedar Road, SF', '9112233445', '2025-01-05'),
(5, 'David Wilson', 'dwilson@company.com', 'M', '1985-12-30', 38, '90 Cedar Road, SF', '9776655443', '2025-01-05'),
(6, 'Laura Martinez', 'laura.martinez@gmail.com', 'F', '1991-09-17', 32, '21 Birch Street, SF', '9988771122', '2025-01-06'),
(6, 'Laura Martinez', 'lmartinez@work.com', 'F', '1991-09-17', 32, '21 Birch Street, SF', '9988771122', '2025-01-06'),
(7, 'Robert Taylor', 'robert.taylor@gmail.com', 'M', '1989-11-23', 34, '44 Walnut Street, NY', '9123456677', '2025-01-07'),
(7, 'Robert Taylor', 'robert.taylor@gmail.com', 'M', '1989-11-23', 34, '44 Walnut Street, NY', '9988223344', '2025-01-07'),
(7, 'Robert Taylor', 'rtaylor@company.com', 'M', '1989-11-23', 34, '44 Walnut Street, NY', '9123456677', '2025-01-07'),
(7, 'Robert Taylor', 'rtaylor@company.com', 'M', '1989-11-23', 34, '44 Walnut Street, NY', '9988223344', '2025-01-07'),
(8, 'Sophia Anderson', 'sophia.anderson@gmail.com', 'F', '1993-04-19', 30, '66 Ash Lane, LA', '9988223344', '2025-01-08'),
(8, 'Sophia Anderson', 'sanderson@work.com', 'F', '1993-04-19', 30, '66 Ash Lane, LA', '9988223344', '2025-01-08'),
(9, 'James Thomas', 'jamesthomas@gmail.com', 'M', '1990-08-11', 33, '88 Chestnut Blvd, SF', '9090909090', '2025-01-09'),
(9, 'James Thomas', 'jthomas@company.com', 'M', '1990-08-11', 33, '88 Chestnut Blvd, SF', '9090909090', '2025-01-09'),
(10, 'Olivia Garcia', 'olivia.garcia@gmail.com', 'F', '1994-06-02', 29, '32 Poplar Street, LA', '9988776655', '2025-01-10'),
(10, 'Olivia Garcia', 'olivia.garcia@gmail.com', 'F', '1994-06-02', 29, '32 Poplar Street, LA', '9111222333', '2025-01-10'),
(10, 'Olivia Garcia', 'ogarcia@work.com', 'F', '1994-06-02', 29, '32 Poplar Street, LA', '9988776655', '2025-01-10'),
(10, 'Olivia Garcia', 'ogarcia@work.com', 'F', '1994-06-02', 29, '32 Poplar Street, LA', '9111222333', '2025-01-10');
SELECT * FROM Donor_1NF LIMIT 99999;
SELECT * FROM Donor LIMIT 99999; 
-- DDL Commands
ALTER TABLE Donor_1NF RENAME TO Donor ;
