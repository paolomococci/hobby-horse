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

SELECT 
    `projects`.`id` AS `project ID`, 
    `projects`.`name` AS `project name`, 
    `projects`.`description` AS `project description`, 
    `customers`.`name` AS `customer name` 
    FROM `projects` 
    INNER JOIN `customers` 
        ON `projects`.`id` = `customers`.`project_id` 
        ORDER BY `projects`.`id` ASC;

/*markdown
## join clause taking into account tables employees and projects
*/

DESCRIBE `employees`;

DESCRIBE `projects`;

SELECT p.id, p.name AS project_name, p.description, e.name AS employee_name, e.surname  
    FROM `projects` AS p
    INNER JOIN `employees` AS e 
        ON p.id = e.project_id 
        ORDER BY p.id ASC;