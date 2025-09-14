-- ️ DDL COMMANDS
CREATE TABLE Hospital (
    H_ID INT,
    H_Name VARCHAR(150),
    H_Email VARCHAR(100),
    H_Contact VARCHAR(100),
    H_Address VARCHAR(200),
    BB_MGR_ID INT,
    PRIMARY KEY (H_ID, H_Email, H_Contact),
    FOREIGN KEY (BB_MGR_ID) REFERENCES BloodBankManager(M_ID)
);

-- DML COMMANDS 
INSERT INTO Hospital (H_ID, H_Name, H_Email, H_Contact, H_Address, BB_MGR_ID) VALUES
(1, 'City Care Hospital', 'citycare@mail.com', '9876543210', '123 Main Street, Mumbai',1),
(1, 'City Care Hospital', 'citycare@mail.com', '9123456780', '123 Main Street, Mumbai',1),
(1, 'City Care Hospital', 'info@citycare.com', '9876543210', '123 Main Street, Mumbai',1),
(1, 'City Care Hospital', 'info@citycare.com', '9123456780', '123 Main Street, Mumbai',1),
(2, 'Green Valley Clinic', 'greenvalley@mail.com', '9988776655', '45 Park Avenue, Delhi',2),
(3, 'Sunrise Health Center', 'sunrise@mail.com', '8899776655', '78 Elm Road, Pune',1),
(3, 'Sunrise Health Center', 'sunrise@mail.com', '7766554433', '78 Elm Road, Pune',1),
(3, 'Sunrise Health Center', 'contact@sunrise.com', '8899776655', '78 Elm Road, Pune',1),
(3, 'Sunrise Health Center', 'contact@sunrise.com', '7766554433', '78 Elm Road, Pune',1);
SELECT * FROM Hospital;

-- DML command
UPDATE Hospital
SET H_Contact = '9000011111'
WHERE H_ID = 2 AND H_Email = 'greenvalley@mail.com';
SELECT * FROM Hospital;

-- Delete one duplicate record
DELETE FROM Hospital
WHERE H_ID = 1 AND H_Email = 'info@citycare.com' AND H_Contact = '9123456780';
SELECT * FROM Hospital;

-- TCL COMMANDS (Transaction Control)
START TRANSACTION;
DELETE FROM Hospital WHERE H_ID = 3 AND H_Email = 'contact@sunrise.com';
ROLLBACK;

-- TCL
GRANT SELECT, UPDATE, DELETE ON Hospital TO 'RajeshKumar'@'localhost','AnitaSingh'@'localhost';
