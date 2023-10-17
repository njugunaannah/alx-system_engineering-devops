#!/bin/bash

# MySQL login credentials
DB_USER="root"
DB_PASS="your_mysql_root_password"

# Database and table information
DB_NAME="tyrell_corp"
TABLE_NAME="nexus6"

# Create the database
mysql -u$DB_USER -p$DB_PASS -e "CREATE DATABASE IF NOT EXISTS $DB_NAME"

# Create the table and insert a record
mysql -u$DB_USER -p$DB_PASS -e "USE $DB_NAME; CREATE TABLE IF NOT EXISTS $TABLE_NAME (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(255)); INSERT INTO $TABLE_NAME (name) VALUES ('Leon')"

# Grant SELECT permission to holberton_user
mysql -u$DB_USER -p$DB_PASS -e "GRANT SELECT ON $DB_NAME.$TABLE_NAME TO 'holberton_user'@'localhost'"

# Flush privileges
mysql -u$DB_USER -p$DB_PASS -e "FLUSH PRIVILEGES"

echo "Database setup complete."
