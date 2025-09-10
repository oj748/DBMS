CREATE SCHEMA bloodb;
USE bloodb;

-- blood bank managers

create user 'RajeshKumar'@'localhost' identified by 'bloodBank@123';
create user 'AnitaSingh'@'localhost' identified by 'bloodBank@123';


-- recording staff (2 employees)

create user 'LauraMartinez'@'localhost' identified by 'BBrecStaff@10';
create user 'RobertTaylor'@'localhost' identified by 'BBrecStaff@10';


GRANT SELECT,INSERT,DELETE,UPDATE ON bloodb.* 
TO 'RajeshKumar'@'localhost','AnitaSingh'@'localhost';

GRANT SELECT,INSERT ON bloodb.* to 'LauraMartinez'@'localhost','RobertTaylor'@'localhost';
