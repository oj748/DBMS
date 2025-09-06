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
(2, 'Anita Singh', 'anita.singh@mail.com', '9988776655'),
(3, 'Vikram Patel', 'vikram.patel@mail.com, vpatel@company.com', '8899776655, 7766554433'),
(4, 'Pooja Sharma', 'pooja.sharma@mail.com', '9988001122, 9112233344'),
(5, 'Rohit Mehra', 'rohit.mehra@mail.com', '9112233445'),
(6, 'Sonal Desai', 'sonal.desai@mail.com, sdesai@work.com', '9988771122, 9900887766'),
(7, 'Karan Joshi', 'karan.joshi@mail.com', '9123456677'),
(8, 'Neha Verma', 'neha.verma@mail.com, nverma@company.com', '9988223344'),
(9, 'Amit Rao', 'amit.rao@mail.com', '9090909090'),
(10, 'Sneha Nair', 'sneha.nair@mail.com, snair@gmail.com', '9988776655, 9111222333');

SELECT * FROM BloodBankManager;
