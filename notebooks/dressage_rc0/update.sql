/*markdown
# update statement
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
## select columns id, name and idle from table projects
*/

SELECT `id`, `name`, `idle` FROM `projects`;

/*markdown
## updates column idle of table projects where idle equals 0
*/

UPDATE `projects` SET `idle` = 1 WHERE `idle` = 0;

/*markdown
### I proceed to assign employees to each project
*/

UPDATE `employees` SET `project_id` = 3 WHERE id = 1;