/*markdown
# select with join clause
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
## join clause taking into account tables customers and projects
*/

DESCRIBE `customers`;

DESCRIBE `projects`;

SELECT `projects`.`id`, `projects`.`name`, `projects`.`description`, `customers`.`name` 
    FROM `projects` 
    INNER JOIN `customers` ON `projects`.`id` = `customers`.`project_id` 
    ORDER BY `projects`.`id` ASC;

/*markdown
## join clause taking into account tables employees and projects
*/

DESCRIBE `employees`;

DESCRIBE `projects`;

SELECT `projects`.`id`, `projects`.`name`, `projects`.`description`, `employees`.`name`, `employees`.`surname`  
    FROM `projects` 
    INNER JOIN `employees` ON `projects`.`id` = `employees`.`project_id` 
    ORDER BY `projects`.`id` ASC;