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
## drop column project_id belonging to table employees
*/

ALTER TABLE `employees` 
    DROP COLUMN IF EXISTS `project_id`;

/*markdown
## drop column project_id belonging to table customers
*/

ALTER TABLE `customers` 
    DROP COLUMN IF EXISTS `project_id`;
