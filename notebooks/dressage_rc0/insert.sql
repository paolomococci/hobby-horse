/*markdown
# insert statement
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
## insert dummy data into table customers
*/

SET FOREIGN_KEY_CHECKS = OFF;
INSERT LOW_PRIORITY INTO `customers` (`name`) VALUES 
    ('customer_1'),
    ('customer_2'),
    ('customer_3'),
    ('customer_4'),
    ('customer_5'),
    ('customer_6');
SET FOREIGN_KEY_CHECKS = ON;

/*markdown
## insert dummy data into table employees
*/

SET FOREIGN_KEY_CHECKS = OFF;
INSERT LOW_PRIORITY INTO `employees` (`name`, `surname`) VALUES 
    ('John', 'Doe'),
    ('Johnny', 'Doe'),
    ('Jane', 'Doe'),
    ('Joe', 'Bloggs'),
    ('Jane', 'Smith'),
    ('Richard', 'Roe');
SET FOREIGN_KEY_CHECKS = ON;

/*markdown
## insert dummy data into table projects
*/

INSERT LOW_PRIORITY INTO `projects` (`name`, `description`) VALUES 
    ('project_1', 'Some description of project one'),
    ('project_2', 'Some description of project two'),
    ('project_3', 'Some description of project three'),
    ('project_4', 'Some description of project four'),
    ('project_5', 'Some description of project five');