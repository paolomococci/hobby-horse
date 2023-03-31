/*markdown
# Hobby Horse
Example of marketing web application, preliminary study carried out thanks to the "notebook" paradigm.
*/

/*markdown
## Backend database administration
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

/*markdown
## They also follow instructions for cleaning up the entire database if and when needed
*/

SET FOREIGN_KEY_CHECKS = 0;
SET @tables = NULL;
SET GROUP_CONCAT_MAX_LEN = 32768;

SELECT GROUP_CONCAT('`', table_schema, '`.`', table_name, '`') INTO @tables
FROM information_schema.tables
WHERE table_schema = (
        SELECT DATABASE()
    );
SELECT IFNULL(@tables, '') INTO @tables;
SET @tables = CONCAT('DROP TABLE IF EXISTS ', @tables);
PREPARE cleaning_statement
FROM @tables;
EXECUTE cleaning_statement;
DEALLOCATE PREPARE cleaning_statement;
SET FOREIGN_KEY_CHECKS = 1;

SHOW TABLES;

/*markdown
## Use notebook_hh_db_rc0
*/

USE `notebook_hh_db_rc0`;