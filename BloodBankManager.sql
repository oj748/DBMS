CREATE TABLE BloodBankManager12 (
    M_ID INT,
    M_Name VARCHAR(100),
    M_Email VARCHAR(100),
    M_Contact VARCHAR(50)
);

INSERT INTO BloodBankManager12 (M_ID, M_Name, M_Email, M_Contact)VALUES
(1, 'Rajesh Kumar', 'rajesh.kumar@mail.com', '9876543210'),
(1, 'Rajesh Kumar', 'rajesh.kumar@mail.com', '9123456780'),
(1, 'Rajesh Kumar', 'rkumar@work.com', '9876543210'),
(1, 'Rajesh Kumar', 'rkumar@work.com', '9123456780'),
(2, 'Anita Singh', 'anita.singh@mail.com', '9988776655');
SELECT * FROM BloodBankManager12;
