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

# Check if distutils is already installed
if ! python3 -c "import distutils" &> /dev/null; then
    echo "distutils is not installed, installing now..."
    apt-get update && apt-get install -y python3-distutils
fi

# Install your dependencies
pip3 install -r requirements.txt

# Run any necessary build commands
# For example, collect static files for Django
python3 manage.py collectstatic --no-input
