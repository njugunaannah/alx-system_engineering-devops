#!/usr/bin/env bash
# This script installs MySQL on web-01 and web-02 servers.

# Update package lists
sudo apt-get update

# Install MySQL
sudo apt-get install -y mysql-server-5.7

# Verify MySQL installation
mysql --version

