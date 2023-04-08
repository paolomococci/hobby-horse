/*markdown
# Create database dressage_rc0 with administrator permissions
*/

CREATE DATABASE `dressage_rc0`;

/*markdown
## assign privileges to a specific user
*/

CREATE DATABASE notebook_hh_db_rc0;
GRANT ALL PRIVILEGES ON notebook_hh_db_rc0.* TO 'username'@'localhost';
FLUSH PRIVILEGES;
SHOW GRANTS FOR 'username'@'localhost';