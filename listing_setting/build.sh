#!/bin/bash

# Check if Python is installed
if ! command -v python3 &> /dev/null
then
    echo "Python3 could not be found"
    exit 1
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
