CREATE USER 'user_ro'@'%' IDENTIFIED BY 'user';
CREATE USER 'user_rw_adress'@'%' IDENTIFIED BY 'user';
CREATE USER 'admin'@'%' IDENTIFIED BY 'admin';

 -- 1 
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'user_ro'@'%';
GRANT SELECT ON car_rental.* TO 'user_ro'@'%';
 -- 2
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'user_rw_adress'@'%';
GRANT SELECT, INSERT, DELETE ON car_rental.adress TO 'user_rw_adress'@'%';
GRANT SELECT ON car_rental.* TO 'user_rw_adress'@'%';
 -- 3
GRANT ALL PRIVILEGES ON car_rental.* TO 'admin'@'%';

