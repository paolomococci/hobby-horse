/*markdown
# drop column statement
*/

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

/*markdown
## drop a column
*/

ALTER TABLE `table_name` 
    DROP COLUMN IF EXISTS `column_name`;
