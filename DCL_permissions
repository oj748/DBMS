-- DCL commands

-- Create DB users for managers (depends on DB, here I’m using MySQL/MariaDB style)
CREATE USER 'rajesh.kumar'@'localhost' IDENTIFIED BY 'StrongPass123';
CREATE USER 'anita.singh'@'localhost' IDENTIFIED BY 'StrongPass456';

-- Grant Rajesh Kumar full access to all blood bank–related tables
GRANT SELECT, INSERT, UPDATE, DELETE ON BloodBank TO 'rajesh.kumar'@'localhost';
GRANT SELECT ON Donor TO 'rajesh.kumar'@'localhost';
GRANT SELECT ON Patient TO 'rajesh.kumar'@'localhost';

-- Grant Anita Singh only read-only access
GRANT SELECT ON BloodBank TO 'anita.singh'@'localhost';

-- Later, if you want to revoke her access
REVOKE SELECT ON BloodBank FROM 'anita.singh'@'localhost';

-- Finally, apply all changes
FLUSH PRIVILEGES;
