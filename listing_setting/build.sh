#!/bin/bash

# Check if Python is installed
if ! command -v python3 &> /dev/null
then
    echo "Python3 could not be found"
    exit 1
fi

# Ensure pip is installed
python3 -m ensurepip --upgrade

# Install setuptools and distutils
pip3 install setuptools

# Check if pip is installed
if ! command -v pip3 &> /dev/null
then
    echo "pip3 could not be found"
    exit 1
fi

# Install distutils if not already installed
if ! python3 -c "import distutils" &> /dev/null
then
    echo "distutils is not installed, installing now..."
    apt-get update && apt-get install -y python3-distutils
fi

# Install dependencies
pip3 install -r requirements.txt

# Run Django collectstatic
python3 manage.py collectstatic --no-input
