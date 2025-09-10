CREATE TABLE IF NOT EXISTS BloodBank121 (
    Test_ID INT, 
    Lab_No INT,
    B_Spec_No INT PRIMARY KEY,
    Blood_Grp VARCHAR(5), 
    B_Quantity INT,
    B_Date DATE,
    FOREIGN KEY (Test_ID) REFERENCES ScreeningTest12(Test_ID),
    FOREIGN KEY (Lab_No) REFERENCES Laboratory(Lab_No)
);

INSERT INTO BloodBank12
(Test_ID, Lab_No, B_Spec_No, Blood_Grp, B_Quantity, B_Date)
VALUES
(1, 1, 101, 'A+', 15, '2025-08-01'),
(2, 2, 102, 'A+', 8, '2025-08-02'),
(3, 3, 103, 'AB+', 27, '2025-08-03'),
(4, 1, 104, 'O+', 7, '2025-08-04'),
(5, 2, 105, 'B+', 15, '2025-08-05'),
(6, 3, 106,  'A+', 10, '2025-08-06'),
(7, 1, 107, 'A+', 8, '2025-08-07'),
(8, 2, 108, 'B+', 8, '2025-08-08'),
(9, 3, 109, 'O+', 10, '2025-08-09'),
(10, 1, 110, 'B+', 7, '2025-08-10');

SELECT * FROM BloodBank;
