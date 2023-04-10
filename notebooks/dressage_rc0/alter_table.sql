/*markdown
# alter table statement
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
## add a foreign key to the table employees
*/

DESCRIBE `employees`;

/*markdown
### first I add column project
*/

ALTER TABLE `employees` 
    ADD COLUMN `project_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT 0 
    AFTER `surname`;

/*markdown
### after that i add the foreign key fk_project_id
*/

SET FOREIGN_KEY_CHECKS = OFF;
ALTER TABLE `employees` 
    ADD CONSTRAINT `fk_project_id` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) 
    ON UPDATE CASCADE 
    ON DELETE SET DEFAULT;
SET FOREIGN_KEY_CHECKS = ON;


/*markdown
## add a foreign key to the table customers
*/

DESCRIBE `customers`;

/*markdown
### first I add column project
*/

ALTER TABLE `customers` 
    ADD COLUMN `project_id` BIGINT(20) UNSIGNED UNIQUE DEFAULT NULL 
    AFTER `name`;
