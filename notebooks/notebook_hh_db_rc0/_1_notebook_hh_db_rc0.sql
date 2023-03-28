/*markdown
# Example of marketing web application, preliminary study carried out thanks to the "notebook" paradigm.
*/

/*markdown
## backend database administration
*/

USE `notebook_db_rc0`;

/*markdown
## Show databases
*/

SHOW DATABASES;

/*markdown
## To create a new database and assign its privileges
*/

CREATE DATABASE notebook_hh_db_rc0;
GRANT ALL PRIVILEGES ON notebook_hh_db_rc0.* TO 'username'@'localhost';
FLUSH PRIVILEGES;
SHOW GRANTS FOR 'username'@'localhost';