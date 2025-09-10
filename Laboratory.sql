CREATE TABLE Laboratory (
    Lab_No INT PRIMARY KEY,
    Lab_Floor INT 
);

INSERT INTO Laboratory (Lab_No, Lab_Floor) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2);


-- Joins
SELECT B.*, L.Lab_FLoor FROM BloodBank B JOIN Laboratory L ON L.Lab_No = B.Lab_No WHERE L.Lab_No = 2;

SELECT * FROM Laboratory;
