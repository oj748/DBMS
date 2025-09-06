CREATE TABLE IF NOT EXISTS Hospital (
    H_ID INT PRIMARY KEY,
    H_Name VARCHAR(150),
    H_Email VARCHAR(100),
    H_Contact VARCHAR(100),
    H_Address VARCHAR(200),
    BB_MGR_ID INT,
    foreign key (BB_MGR_ID) references BloodBankManager(M_ID)
);
-- DROP TABLE Hospital;
INSERT INTO Hospital (H_ID, H_Name, H_Email, H_Contact, H_Address,BB_MGR_ID) VALUES
(1, 'City Care Hospital', 'citycare@mail.com, info@citycare.com', '9876543210, 9123456780', '123 Main Street, Mumbai',1),
(2, 'Green Valley Clinic', 'greenvalley@mail.com', '9988776655', '45 Park Avenue, Delhi',2),
(3, 'Sunrise Health Center', 'sunrise@mail.com, contact@sunrise.com', '8899776655, 7766554433', '78 Elm Road, Pune',3),
(4, 'Oceanview Hospital', 'oceanview@mail.com', '9988001122', '9 Beach Street, Chennai',4),
(5, 'Lakeside Medical', 'lakeside@mail.com, support@lakeside.com', '9112233445', '56 Lake Road, Bangalore',5),
(6, 'Mountainview Clinic', 'mountainview@mail.com', '9988771122, 9900887766', '12 Hill Street, Jaipur',6),
(7, 'Harmony Hospital', 'harmony@mail.com, info@harmony.com', '9123456677', '33 Maple Avenue, Kolkata',6),
(8, 'Cedar Health Center', 'cedar@mail.com', '9988223344', '21 Cedar Road, Lucknow',7),
(9, 'Pinecrest Clinic', 'pinecrest@mail.com, contact@pinecrest.com', '9090909090', '44 Pine Street, Ahmedabad',8),
(10, 'Riverside Hospital', 'riverside@mail.com', '9988776655, 9111222333', '11 River Road, Surat',9),
(11, 'Sunflower Health', 'sunflower@mail.com', '9876541230', '7 Sun Street, Indore',10),
(12, 'Maplewood Clinic', 'maplewood@mail.com, info@maplewood.com', '9988773344', '89 Maple Lane, Bhopal',1),
(13, 'Evergreen Hospital', 'evergreen@mail.com', '9123458899', '23 Evergreen Street, Nagpur',2),
(14, 'Blue Sky Medical', 'bluesky@mail.com, support@bluesky.com', '9988003344', '56 Sky Avenue, Pune',3),
(15, 'Golden Gate Clinic', 'goldengate@mail.com', '9112233445, 9988771122', '12 Gate Road, Mumbai',4),
(16, 'Silver Oak Hospital', 'silveroak@mail.com, info@silveroak.com', '9988775566', '33 Oak Street, Delhi',5),
(17, 'Crystal Lake Clinic', 'crystallake@mail.com', '9876554433', '44 Lake Avenue, Chennai',6),
(18, 'Emerald Health Center', 'emerald@mail.com, contact@emerald.com', '9988661122', '22 Emerald Road, Bangalore',7),
(19, 'Harmony Care', 'harmonycare@mail.com', '9112345566', '18 Harmony Street, Jaipur',8),
(20, 'Lotus Medical', 'lotus@mail.com, info@lotus.com', '9988773344', '5 Lotus Lane, Kolkata',9);

SELECT * FROM Hospital ;
