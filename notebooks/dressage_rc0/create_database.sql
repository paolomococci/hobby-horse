/*markdown
# Create database dressage_rc0 with administrator permissions
*/

CREATE DATABASE IF NOT EXISTS `dressage_rc0`;

/*markdown
## assign privileges to a specific user
*/

GRANT ALL PRIVILEGES ON dressage_rc0.* TO 'username'@'localhost';
FLUSH PRIVILEGES;
SHOW GRANTS FOR 'username'@'localhost';

/*markdown
## show databases
*/

SHOW DATABASES;

/*markdown
## use dressage_rc0
*/

USE `dressage_rc0`;

/*markdown
## show tables of dressage_rc0
*/

SHOW TABLES;
