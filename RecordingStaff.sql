CREATE TABLE RecordingStaff (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(100),
    Emp_Email VARCHAR(100) UNIQUE,
    E_Contact VARCHAR(50) ,
    MGR INT, -- Blood Bank Manager  (MGR) should supervise recording staff , so foreign key should exist here
    FOREIGN KEY (MGR) REFERENCES BloodBankManager(M_ID)
);

INSERT INTO RecordingStaff (Emp_ID, Emp_Name, Emp_Email, E_Contact, MGR) VALUES
(1, 'John Smith', 'john.smith@email.com, j.smith@work.com', '9876543210,9123456780', 1),
(2, 'Emily Johnson', 'emily.j@gmail.com, emily.johnson@work.com', '9988776655', 2),
(3, 'Michael Brown', 'mikeb@yahoo.com, mbrown@company.com', '8899776655,7766554433', 1),
(4, 'Sarah Davis', 'sarahd@hospital.com, s.davis@gmail.com', '9988001122', 2),
(5, 'David Wilson', 'davidwilson@gmail.com, danwilson@gmail.com', '9112233445,9776655443', 1),
(6, 'Laura Martinez', 'laura.martinez@gmail.com, lmartinez@work.com', '9988771122', 2),
(7, 'Robert Taylor', 'roberttaylor@yahoo.com, r.taylor@work.com', '9123456677', 1);
SELECT * FROM RecordingStaff;
