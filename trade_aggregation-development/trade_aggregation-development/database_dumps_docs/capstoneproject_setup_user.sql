CREATE USER 'tradeadminuser'@'localhost' IDENTIFIED WITH mysql_native_password BY 'admin@trade#user';

GRANT ALL PRIVILEGES ON capstoneproject.* TO 'tradeadminuser'@'localhost' WITH GRANT OPTION;

FLUSH PRIVILEGES;