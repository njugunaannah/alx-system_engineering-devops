#!/usr/bin/env bash
# This script creates a MySQL user and grants necessary privileges.

# MySQL credentials
MYSQL_USER="holberton_user"
MYSQL_PASSWORD="projectcorrection280hbtn"

# Create MySQL user with replication client privileges
mysql -e "CREATE USER '${MYSQL_USER}'@'localhost' IDENTIFIED BY '${MYSQL_PASSWORD}'"
mysql -e "GRANT REPLICATION CLIENT ON *.* TO '${MYSQL_USER}'@'localhost'"

# Show grants for the created user
mysql -u${MYSQL_USER} -p${MYSQL_PASSWORD} -e "SHOW GRANTS FOR '${MYSQL_USER}'@'localhost'"

