#!/bin/bash

# MySQL login credentials
DB_USER="root"
DB_PASS="projectcorrection280hbtn"

# Create replica_user and grant replication privileges
mysql -u$DB_USER -p$DB_PASS -e "CREATE USER 'replica_user'@'%' IDENTIFIED BY 'your_replica_password_here';"
mysql -u$DB_USER -p$DB_PASS -e "GRANT REPLICATION SLAVE ON *.* TO 'replica_user'@'%';"
mysql -u$DB_USER -p$DB_PASS -e "FLUSH PRIVILEGES;"

# Grant SELECT privileges on mysql.user to holberton_user
mysql -u$DB_USER -p$DB_PASS -e "GRANT SELECT ON mysql.user TO 'holberton_user'@'localhost';"
mysql -u$DB_USER -p$DB_PASS -e "FLUSH PRIVILEGES;"

echo "replica_user created with replication privileges."
