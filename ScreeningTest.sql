CREATE TABLE ScreeningTest12 (
    Test_ID INT ,
    D_ID INT,
    BP VARCHAR(20),
    Weight DECIMAL(5,2),
    Platelet VARCHAR(100),
    Hemoglobin DECIMAL(5,2),
    Hematocrit DECIMAL(5,2),
    Blood_Grp VARCHAR(5),
    Eligible BOOLEAN
);

INSERT INTO ScreeningTest12 (Test_ID, D_ID, BP, Weight, Platelet, Hemoglobin, Hematocrit, Blood_Grp, Eligible) VALUES
(1, 1, '120/80', 70.5, '250000', 14.5, 42.0, 'A+', TRUE),
(1, 1, '120/80', 70.5, '260000', 14.5, 42.0, 'A+', TRUE),
(2, 2, '118/79', 65.2, '240000', 13.8, 40.5, 'B+', TRUE),
(3, 3, '122/81', 80.0, '270000', 15.2, 43.0, 'O+', TRUE),
(3, 3, '122/81', 80.0, '275000', 15.2, 43.0, 'O+', TRUE),
(4, 4, '115/75', 55.5, '230000', 12.9, 38.0, 'AB+', TRUE),
(5, 5, '125/85', 72.3, '260000', 14.8, 41.5, 'A-', TRUE),
(5, 5, '125/85', 72.3, '265000', 14.8, 41.5, 'A-', TRUE),
(6, 6, '119/78', 68.0, '245000', 13.7, 40.0, 'B-', TRUE),
(7, 7, '121/80', 75.2, '280000', 15.5, 44.0, 'O-', TRUE),
(7, 7, '121/80', 75.2, '285000', 15.5, 44.0, 'O-', TRUE),
(8, 8, '117/76', 62.5, '235000', 13.2, 39.0, 'AB-', TRUE),
(9, 9, '123/82', 78.0, '270000', 14.9, 42.5, 'A+', TRUE),
(9, 9, '123/82', 78.0, '275000', 14.9, 42.5, 'A+', TRUE),
(10, 10, '120/79', 69.5, '250000', 14.1, 41.0, 'B+', TRUE);

SELECT * FROM ScreeningTest12;
