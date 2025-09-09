CREATE TABLE Laboratory (
    Lab_No INT PRIMARY KEY,
    Lab_Floor INT 
);

INSERT INTO Laboratory (Lab_No, Lab_Floor) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2);

SELECT * FROM Laboratory;
