CREATE TABLE BloodBankManager (
    M_ID INT PRIMARY KEY,
    M_Name VARCHAR(100),
    M_Email VARCHAR(100),
    M_Contact VARCHAR(50)
);


-- there should be only 10 managers 100 recording staff members , there cannot be 100 managers



INSERT INTO BloodBankManager (M_ID, M_Name, M_Email, M_Contact)
VALUES
(1, 'Rajesh Kumar', 'rajesh.kumar@mail.com, rkumar@work.com', '9876543210, 9123456780'),
(2, 'Anita Singh', 'anita.singh@mail.com', '9988776655');
SELECT * FROM BloodBankManager;
