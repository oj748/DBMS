CREATE TABLE RecordingStaff (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(100),
    Emp_Email VARCHAR(100) UNIQUE,
    E_Contact VARCHAR(50) -- Blood Bank Manager should supervise recording staff , so foreign key should exist here
);

-- there should be only 10 managers 100 recording staff members , there cannot be 100 managers

INSERT INTO RecordingStaff (Emp_ID, Emp_Name, Emp_Email, E_Contact) VALUES
(1, 'John Smith / Johnny', 'john.smith@email.com, j.smith@work.com', '9876543210,9123456780'),
(2, 'Emily Johnson', 'emily.j@gmail.com, emily.johnson@work.com', '9988776655'),
(3, 'Michael Brown + Mike B.', 'mikeb@yahoo.com, mbrown@company.com', '8899776655,7766554433'),
(4, 'Sarah Davis (Sr. Nurse)', 'sarahd@hospital.com, s.davis@gmail.com', '9988001122'),
(5, 'David Wilson & Daniel Wilson', 'davidwilson@gmail.com, danwilson@gmail.com', '9112233445,9776655443'),
(6, 'Laura Martinez', 'laura.martinez@gmail.com, lmartinez@work.com', '9988771122'),
(7, 'Robert Taylor', 'roberttaylor@yahoo.com, r.taylor@work.com', '9123456677'),
(8, 'Sophia Anderson', 'sophia.anderson@gmail.com, s.anderson@company.com', '9988223344,9112233445'),
(9, 'James Thomas / Jimmy', 'jamesthomas@gmail.com, jthomas@company.com', '9090909090'),
(10, 'Olivia Garcia', 'olivia.garcia@gmail.com, o.garcia@work.com', '9988776655,9111222333');

SELECT * FROM RecordingStaff;
