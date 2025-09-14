-- DDL command
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

ALTER TABLE Laboratory ADD Lab_Name VARCHAR(100);
SELECT * FROM Laboratory;
ALTER TABLE Laboratory DROP COLUMN Lab_Name;
SELECT * FROM Laboratory;

-- DML command
UPDATE Laboratory SET Lab_Floor = 3 WHERE Lab_No = 2;
SELECT * FROM Laboratory;

-- TCL (Transaction Control Language)
START TRANSACTION;
UPDATE Laboratory SET Lab_Floor = 5 WHERE Lab_No = 3;
SAVEPOINT After_Lab3_Update;
SELECT * FROM Laboratory;
DELETE FROM Laboratory WHERE Lab_No = 1;
SELECT * FROM Laboratory;
ROLLBACK TO After_Lab3_Update;
COMMIT;

-- TCL
GRANT SELECT, UPDATE, DELETE ON Laboratory TO 'RajeshKumar'@'localhost','AnitaSingh'@'localhost';
