CREATE TABLE Laboratory (
    Lab_No INT PRIMARY KEY,
    Lab_Floor INT 
);

INSERT INTO Laboratory (Lab_No, B_Spec_No, B_Cost) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 2),
(6, 2),
(7, 2),
(8, 3),
(9, 3),
(10, 3);

SELECT * FROM Laboratory;
