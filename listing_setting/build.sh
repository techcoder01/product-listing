#!/bin/bash

# Ensure Python and pip are installed
if ! command -v python3 &> /dev/null; then
    echo "Python3 could not be found"
    exit 1
fi

if ! command -v pip3 &> /dev/null; then
    echo "pip3 could not be found"
    python3 -m ensurepip --upgrade
fi

# Install your dependencies
pip3 install -r requirements.txt

# Run any necessary build commands
# For example, collect static files for Django
python3 manage.py collectstatic --no-input
