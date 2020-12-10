
CREATE USER 'hwindom'@'%' IDENTIFIED BY 'hwindom';
GRANT ALL PRIVILEGES ON wordpress.* TO 'hwindom'@'%';

CREATE DATABASE wordpress;

FLUSH PRIVILEGES;