/*markdown
# Create database dressage_rc0 with administrator permissions
*/

CREATE DATABASE `dressage_rc0`;

/*markdown
## assign privileges to a specific user
*/

GRANT ALL PRIVILEGES ON dressage_rc0.* TO 'username'@'localhost';
FLUSH PRIVILEGES;
SHOW GRANTS FOR 'username'@'localhost';