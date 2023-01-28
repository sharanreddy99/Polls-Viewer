use mysql;
create user 'username'@'localhost' identified by 'password';
GRANT ALL PRIVILEGES ON *.* TO 'username'@'localhost';
flush privileges;
create database pollsdb;
