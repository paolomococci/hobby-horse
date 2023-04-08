/*markdown
# Use dressage_rc0
*/

USE `dressage_rc0`;

/*markdown
## display all tables, if any
*/

SHOW TABLES;

/*markdown
## They also follow instructions for cleaning up the entire database if and when needed
*/

SET FOREIGN_KEY_CHECKS = 0;
SET @tables = NULL;
SET GROUP_CONCAT_MAX_LEN = 32768;
SELECT GROUP_CONCAT('`', table_schema, '`.`', table_name, '`') INTO @tables
FROM information_schema.tables
WHERE table_schema = (
        SELECT DATABASE()
    );
SELECT IFNULL(@tables, '') INTO @tables;
SET @tables = CONCAT('DROP TABLE IF EXISTS ', @tables);
PREPARE cleaning_statement
FROM @tables;
EXECUTE cleaning_statement;
DEALLOCATE PREPARE cleaning_statement;
SET FOREIGN_KEY_CHECKS = 1;