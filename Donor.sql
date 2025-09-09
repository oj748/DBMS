CREATE TABLE IF NOT EXISTS Donor (
    D_ID INT PRIMARY KEY,
    D_Name VARCHAR(100) NOT NULL,
    D_Email VARCHAR(100) UNIQUE,
    D_Gender CHAR(1),
    D_DOB DATE,
    D_Age INT NOT NULL CHECK(D_Age > 18),
    D_Address VARCHAR(200),
    D_Contact VARCHAR(100),
    D_Reg_Date DATE
);


INSERT INTO Donor (D_ID, D_Name, D_Email, D_Gender, D_DOB, D_Age, D_Address, D_Contact, D_Reg_Date) VALUES
(1, 'John Doe', 'john.doe@gmail.com, j.doe@work.com', 'M', '1990-01-15', 33, '123 Elm Street, NY', '9876543210,9123456780', '2025-01-01'),
(2, 'Emily Clark', 'emily.clark@gmail.com, eclark@company.com', 'F', '1988-05-22', 35, '45 Oak Lane, NY', '9988776655', '2025-01-02'),
(3, 'Michael Smith', 'michael.smith@gmail.com, msmith@work.com', 'M', '1992-03-12', 31, '78 Pine Street, LA', '8899776655,7766554433', '2025-01-03'),
(4, 'Sarah Johnson', 'sarah.johnson@gmail.com, sjohnson@work.com', 'F', '1995-07-08', 28, '56 Maple Avenue, LA', '9988001122', '2025-01-04'),
(5, 'David Wilson', 'david.wilson@gmail.com, dwilson@company.com', 'M', '1985-12-30', 38, '90 Cedar Road, SF', '9112233445,9776655443', '2025-01-05'),
(6, 'Laura Martinez', 'laura.martinez@gmail.com, lmartinez@work.com', 'F', '1991-09-17', 32, '21 Birch Street, SF', '9988771122', '2025-01-06'),
(7, 'Robert Taylor', 'robert.taylor@gmail.com, rtaylor@company.com', 'M', '1989-11-23', 34, '44 Walnut Street, NY', '9123456677,9988223344', '2025-01-07'),
(8, 'Sophia Anderson', 'sophia.anderson@gmail.com, sanderson@work.com', 'F', '1993-04-19', 30, '66 Ash Lane, LA', '9988223344', '2025-01-08'),
(9, 'James Thomas', 'jamesthomas@gmail.com, jthomas@company.com', 'M', '1990-08-11', 33, '88 Chestnut Blvd, SF', '9090909090', '2025-01-09'),
(10, 'Olivia Garcia', 'olivia.garcia@gmail.com, ogarcia@work.com', 'F', '1994-06-02', 29, '32 Poplar Street, LA', '9988776655,9111222333', '2025-01-10');

SELECT * FROM Donor ;
