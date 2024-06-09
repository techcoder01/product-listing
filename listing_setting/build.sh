#!/bin/bash

# Check if Python is installed
if ! command -v python3 &> /dev/null
then
    echo "Python3 could not be found"
    exit 1
fi

# Ensure distutils and SQLite development libraries are installed
python3 -m ensurepip --upgrade
pip3 install setuptools

# Install SQLite development libraries
if ! dpkg -s sqlite3 libsqlite3-dev &> /dev/null
then
    echo "Installing SQLite development libraries..."
    apt-get update && apt-get install -y sqlite3 libsqlite3-dev
fi

# Check if pip is installed
if ! command -v pip3 &> /dev/null
then
    echo "pip3 could not be found"
    exit 1
fi

# Install dependencies
pip3 install -r requirements.txt

# Run Django collectstatic
python3 manage.py collectstatic --no-input
