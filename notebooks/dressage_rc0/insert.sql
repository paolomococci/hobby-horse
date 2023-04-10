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

INSERT LOW_PRIORITY INTO `customers` (`name`) VALUES 
    ('customer_1'),
    ('customer_2'),
    ('customer_3'),
    ('customer_4'),
    ('customer_5'),
    ('customer_6');