CREATE TABLE IF NOT EXISTS Hospital (
    H_ID INT PRIMARY KEY,
    H_Name VARCHAR(150),
    H_Email VARCHAR(100),
    H_Contact VARCHAR(100),
    H_Address VARCHAR(200),
    BB_MGR_ID INT,
    foreign key (BB_MGR_ID) references BloodBankManager(M_ID)
);

INSERT INTO Hospital (H_ID, H_Name, H_Email, H_Contact, H_Address,BB_MGR_ID) VALUES
(1, 'City Care Hospital', 'citycare@mail.com, info@citycare.com', '9876543210, 9123456780', '123 Main Street, Mumbai',1),
(2, 'Green Valley Clinic', 'greenvalley@mail.com', '9988776655', '45 Park Avenue, Delhi',2),
(3, 'Sunrise Health Center', 'sunrise@mail.com, contact@sunrise.com', '8899776655, 7766554433', '78 Elm Road, Pune',1);
SELECT * FROM Hospital ;

-- DDL Commands
ALTER TABLE Hospital MODIFY H_Address varchar(100); 
-- DML Commands

UPDATE Hospital SET H_Address = '101 Park Square, Mumbai' WHERE H_ID = 1;
SELECT * FROM Hospital ;

-- DCL Commands

GRANT UPDATE,DELETE ON Hospital TO 'LauraMartinez'@'localhost','RobertTaylor'@'localhost';

-- TCL Commands
COMMIT;
